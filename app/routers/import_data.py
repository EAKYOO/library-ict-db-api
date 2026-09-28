import re
from io import BytesIO

import pandas as pd
from fastapi import APIRouter, Depends, File, HTTPException, UploadFile
from pydantic import ValidationError
from sqlalchemy import func
from sqlalchemy.exc import IntegrityError
from sqlalchemy.orm import Session

from app import crud, schemas
from app.auth import get_current_admin
from app.database import get_db
from app.models import (
    Library, RoomType, Status, ComponentType, ComputerType, Room,
    ComputerSet,
)

router = APIRouter(prefix="/import", tags=["import"])

IMPORT_MAP = {
    "library": (schemas.LibraryCreate, crud.create_library),
    "room_type": (schemas.RoomTypeCreate, crud.create_room_type),
    "status": (schemas.StatusCreate, crud.create_status),
    "component_type": (schemas.ComponentTypeCreate, crud.create_component_type),
    "computer_type": (schemas.ComputerTypeCreate, crud.create_computer_type),
    "room": (schemas.RoomCreate, crud.create_room),
    "computer_set": (schemas.ComputerSetCreate, crud.create_computer_set),
    "component": (schemas.ComponentCreate, crud.create_component),
    "printer": (schemas.PrinterCreate, crud.create_printer),
    "user": (schemas.UserCreate, crud.create_user),
}

# Sheets with these names are read first; otherwise the first sheet is used.
DATA_SHEET_NAMES = ("data entry", "data", "import")

MAX_ERRORS_RETURNED = 50

# ---------------------------------------------------------------------------
# Column names that are accepted for each piece of information. Headers in the
# spreadsheet are normalised first ("Inventory Barcode" -> "inventory_barcode"),
# so capitalisation, spaces and underscores never matter.
# ---------------------------------------------------------------------------
ROOM_COLS = ("room_name", "room")
LIBRARY_COLS = ("library_name", "library")
STATUS_COLS = ("status_name", "status")
BARCODE_COLS = ("inventory_barcode", "barcode", "inventory_barcode_number")
SERIAL_COLS = ("serial_number", "serial", "serial_no")
COMPUTER_REF_COLS = (
    "computer_identifier", "computer_barcode", "computer_serial_number",
    "computer", "parent_computer",
)

# For each table: (label shown to the user, accepted column names).
# A file must contain at least one accepted name for every entry.
REQUIRED_COLUMNS = {
    "library": [("Library Name", ("library_name", "library", "name"))],
    "room_type": [("Type Name", ("type_name", "name", "type", "room_type", "room_type_name"))],
    "status": [("Status Name", ("status_name", "status", "name"))],
    "component_type": [("Type Name", ("type_name", "name", "type", "component_type", "component_type_name"))],
    "computer_type": [("Type Name", ("type_name", "name", "type", "computer_type", "computer_type_name"))],
    "room": [
        ("Room Name", ("room_name", "room", "name")),
        ("Library", LIBRARY_COLS),
        ("Room Type", ("room_type_name", "room_type", "type")),
    ],
    "computer_set": [
        ("Room", ROOM_COLS),
        ("Computer Type", ("computer_type_name", "computer_type", "type")),
        ("Inventory Barcode or Serial Number", BARCODE_COLS + SERIAL_COLS),
    ],
    "component": [
        ("Room", ROOM_COLS),
        ("Component Type", ("component_type_name", "component_type", "type")),
        ("Status", STATUS_COLS),
        ("Inventory Barcode or Serial Number", BARCODE_COLS + SERIAL_COLS),
    ],
    "printer": [
        ("Room", ROOM_COLS),
        ("Status", STATUS_COLS),
        ("Inventory Barcode or Serial Number", BARCODE_COLS + SERIAL_COLS),
    ],
    "user": [
        ("Username", ("username", "user_name", "user")),
        ("Password", ("password",)),
    ],
}

FIELD_LABELS = {
    "inventory_barcode": "Inventory Barcode",
    "serial_number": "Serial Number",
    "purchase_date": "Purchase Date",
    "last_checked": "Last Checked",
    "room_name": "Room",
    "library_name": "Library",
    "type_name": "Type Name",
    "status_name": "Status Name",
}


# ---------------------------------------------------------------------------
# Small helpers
# ---------------------------------------------------------------------------
def _norm(name):
    """'Inventory Barcode' / 'inventory-barcode' / 'INVENTORY_BARCODE' -> 'inventory_barcode'."""
    return re.sub(r"[^a-z0-9]+", "_", str(name).strip().lower()).strip("_")


def _clean(value):
    """Turn any spreadsheet cell into a stripped string, or None when blank."""
    if value is None:
        return None
    try:
        if pd.isna(value):
            return None
    except (TypeError, ValueError):
        pass
    text = str(value).strip()
    if re.fullmatch(r"-?\d+\.0", text):  # Excel numbers like 5678 sometimes arrive as "5678.0"
        text = text[:-2]
    return text or None


def _pick(row, names):
    """First non-blank value among the accepted column names."""
    for name in names:
        value = row.get(name)
        if value is not None:
            return value
    return None


def _to_date(value):
    """Accepts ISO dates, Excel date cells, Excel serial numbers and day-first dates."""
    value = _clean(value)
    if value is None:
        return None
    if re.fullmatch(r"\d{5}(\.\d+)?", value):  # Excel serial date, e.g. 45900
        return (pd.Timestamp("1899-12-30") + pd.to_timedelta(float(value), unit="D")).date()
    iso = re.match(r"^\d{4}-\d{2}-\d{2}", value) is not None
    parsed = pd.to_datetime(value, errors="coerce", dayfirst=not iso)
    if pd.isna(parsed):
        raise ValueError(f"'{value}' is not a valid date (use YYYY-MM-DD)")
    return parsed.date()


def _find_one(db, model, field_name, value, label):
    value = _clean(value)
    if value is None:
        raise ValueError(f"{label} is required")

    field = getattr(model, field_name)
    matches = (
        db.query(model)
        .filter(func.lower(func.trim(field)) == value.lower())
        .all()
    )

    if not matches:
        raise ValueError(f"{label} '{value}' was not found in the database")
    if len(matches) > 1:
        raise ValueError(f"{label} '{value}' is ambiguous because more than one matching record exists")
    return matches[0]


def _find_room(db, room_name, library_name=None):
    room_name = _clean(room_name)
    library_name = _clean(library_name)
    if not room_name:
        raise ValueError("Room is required")

    query = (
        db.query(Room)
        .join(Library, Room.library_id == Library.library_id)
        .filter(func.lower(func.trim(Room.room_name)) == room_name.lower())
    )
    if library_name:
        query = query.filter(
            func.lower(func.trim(Library.library_name)) == library_name.lower()
        )

    matches = query.all()
    if not matches:
        if library_name:
            raise ValueError(f"Room '{room_name}' was not found in library '{library_name}'")
        raise ValueError(f"Room '{room_name}' was not found in the database")
    if len(matches) > 1:
        if library_name:
            raise ValueError(f"Room '{room_name}' is ambiguous in library '{library_name}'")
        raise ValueError(
            f"Room '{room_name}' exists in more than one library. Add a Library column to the spreadsheet."
        )
    return matches[0]


def _find_computer(db, identifier):
    identifier = _clean(identifier)
    if not identifier:
        raise ValueError("Computer identifier is required")

    barcode = (
        db.query(ComputerSet)
        .filter(ComputerSet.inventory_barcode.isnot(None))
        .filter(func.lower(func.trim(ComputerSet.inventory_barcode)) == identifier.lower())
        .all()
    )
    serial = (
        db.query(ComputerSet)
        .filter(ComputerSet.serial_number.isnot(None))
        .filter(func.lower(func.trim(ComputerSet.serial_number)) == identifier.lower())
        .all()
    )
    matches = {c.computer_id: c for c in barcode + serial}

    if not matches:
        raise ValueError(
            f"Computer with barcode or serial number '{identifier}' was not found in the database"
        )
    if len(matches) > 1:
        raise ValueError(f"Computer identifier '{identifier}' matches more than one record")
    return next(iter(matches.values()))


def _friendly_error(exc):
    """Turn technical exceptions into a sentence a librarian can act on."""
    if isinstance(exc, ValidationError):  # must come before ValueError (pydantic subclasses it)
        parts = []
        for err in exc.errors():
            loc = ".".join(str(p) for p in err.get("loc", ()))
            label = FIELD_LABELS.get(loc, loc.replace("_", " ").title())
            message = "is required" if err.get("type") == "missing" else err.get("msg", "is not valid")
            parts.append(f"{label} {message}")
        return "; ".join(parts)

    if isinstance(exc, IntegrityError):
        raw = str(getattr(exc, "orig", exc))
        low = raw.lower()
        if "duplicate" in low or "unique" in low:
            match = re.search(r"Duplicate entry '(.+?)' for key", raw)
            value = f" ({match.group(1)})" if match else ""
            if "barcode" in low:
                return f"Inventory Barcode already exists in the system{value}"
            if "serial" in low:
                return f"Serial Number already exists in the system{value}"
            if "username" in low:
                return f"Username already exists{value}"
            return f"This record already exists{value}"
        if "check constraint" in low:
            return "Enter at least one of Inventory Barcode or Serial Number"
        if "foreign key" in low:
            return "Refers to a record that does not exist"
        return "The database rejected this row"

    return str(exc)


def _read_file(filename, contents):
    """Read every cell as text so barcodes, serials and dates are never mangled."""
    read_opts = dict(dtype=str, keep_default_na=False, na_values=[""])
    if filename.endswith(".csv"):
        last_error = None
        for encoding in ("utf-8-sig", "utf-8", "latin-1"):
            try:
                return pd.read_csv(BytesIO(contents), encoding=encoding, **read_opts)
            except UnicodeDecodeError as e:
                last_error = e
        raise last_error
    if filename.endswith((".xlsx", ".xls")):
        workbook = pd.ExcelFile(BytesIO(contents))
        sheet = next(
            (s for s in workbook.sheet_names if s.strip().lower() in DATA_SHEET_NAMES),
            workbook.sheet_names[0],
        )
        return workbook.parse(sheet, **read_opts)
    raise HTTPException(status_code=400, detail="File must be .csv, .xlsx, or .xls")


def _check_required_columns(table, df):
    present = {_norm(c) for c in df.columns}
    missing = [
        label for label, names in REQUIRED_COLUMNS.get(table, [])
        if not any(name in present for name in names)
    ]
    if missing:
        found = ", ".join(str(c) for c in df.columns if not str(c).startswith("Unnamed")) or "none"
        raise HTTPException(
            status_code=400,
            detail=f"The file is missing required column(s): {', '.join(missing)}. Columns found: {found}",
        )


# ---------------------------------------------------------------------------
# Turn one spreadsheet row (human-readable names) into database-ready values
# ---------------------------------------------------------------------------
def _build_payload(db, table, row, notes):
    if table == "library":
        return {
            "library_name": _pick(row, ("library_name", "library", "name")),
            "building_desc": _pick(row, ("building_desc", "building_description", "description")),
        }

    if table in ("room_type", "component_type", "computer_type"):
        return {"type_name": _pick(row, ("type_name", "name", "type", table, f"{table}_name"))}

    if table == "status":
        return {"status_name": _pick(row, ("status_name", "status", "name"))}

    if table == "user":
        return {
            "username": _pick(row, ("username", "user_name", "user")),
            "password": _pick(row, ("password",)),
        }

    if table == "room":
        library = _find_one(db, Library, "library_name", _pick(row, LIBRARY_COLS), "Library")
        room_type = _find_one(
            db, RoomType, "type_name",
            _pick(row, ("room_type_name", "room_type", "type")), "Room Type",
        )
        return {
            "room_name": _pick(row, ("room_name", "room", "name")),
            "library_id": library.library_id,
            "room_type_id": room_type.room_type_id,
            "floor_no": _pick(row, ("floor_no", "floor", "floor_number")),
        }

    # computers, components and printers all live in a room and are identified
    # by a barcode and/or a serial number
    room = _find_room(db, _pick(row, ROOM_COLS), _pick(row, LIBRARY_COLS))
    payload = {
        "room_id": room.room_id,
        "inventory_barcode": _pick(row, BARCODE_COLS),
        "serial_number": _pick(row, SERIAL_COLS),
        "brand": _pick(row, ("brand", "make")),
        "model": _pick(row, ("model",)),
        "remarks": _pick(row, ("remarks", "remark", "notes", "note")),
    }
    if not (payload["inventory_barcode"] or payload["serial_number"]):
        raise ValueError("Enter at least one of Inventory Barcode or Serial Number")

    if table == "computer_set":
        computer_type = _find_one(
            db, ComputerType, "type_name",
            _pick(row, ("computer_type_name", "computer_type", "type")), "Computer Type",
        )
        payload["computer_type_id"] = computer_type.computer_type_id
        payload["purchase_date"] = _to_date(_pick(row, ("purchase_date",)))
        # Computers have no status column in the database, so a Status column
        # (present in some older templates) is accepted but not stored.
        if _pick(row, STATUS_COLS) is not None:
            notes.add("The Status column is ignored for computers - only components and printers store a status.")

    elif table == "component":
        component_type = _find_one(
            db, ComponentType, "type_name",
            _pick(row, ("component_type_name", "component_type", "type")), "Component Type",
        )
        status = _find_one(db, Status, "status_name", _pick(row, STATUS_COLS), "Status")
        parent = _pick(row, COMPUTER_REF_COLS)
        payload["component_type_id"] = component_type.component_type_id
        payload["status_id"] = status.status_id
        payload["computer_id"] = _find_computer(db, parent).computer_id if parent else None
        payload["last_checked"] = _to_date(_pick(row, ("last_checked",)))

    elif table == "printer":
        status = _find_one(db, Status, "status_name", _pick(row, STATUS_COLS), "Status")
        payload["status_id"] = status.status_id
        payload["printer_type"] = _pick(row, ("printer_type", "type"))
        payload["purchase_date"] = _to_date(_pick(row, ("purchase_date",)))

    return payload


@router.post("/{table}")
def import_table(
    table: str,
    file: UploadFile = File(...),
    db: Session = Depends(get_db),
    admin=Depends(get_current_admin),
):
    if table not in IMPORT_MAP:
        raise HTTPException(status_code=400, detail=f"Import is not supported for '{table}'")

    create_schema, create_func = IMPORT_MAP[table]
    filename = (file.filename or "").lower()
    contents = file.file.read()

    try:
        df = _read_file(filename, contents)
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Could not read file: {e}")

    _check_required_columns(table, df)

    schema_fields = set(create_schema.model_fields)
    created = 0
    rows_in_file = 0
    errors = []
    notes = set()

    for index, raw_row in df.iterrows():
        excel_row = index + 2  # row 1 is the header

        # normalised column name -> cleaned text (first non-blank cell wins)
        row = {}
        for column, value in raw_row.items():
            key = _norm(column)
            cleaned = _clean(value)
            if key and (key not in row or row[key] is None):
                row[key] = cleaned

        if all(value is None for value in row.values()):
            continue  # a completely empty row (Excel often pads the sheet with them)
        rows_in_file += 1

        try:
            payload = _build_payload(db, table, row, notes)
            payload = {k: v for k, v in payload.items() if k in schema_fields}
            validated = create_schema(**payload)  # type: ignore
            create_func(db, validated)
            created += 1
        except Exception as e:
            # Without this, one failed row leaves the database session broken
            # and every row after it fails too.
            db.rollback()
            errors.append({"row": excel_row, "error": _friendly_error(e)})

    return {
        "table": table,
        "rows_in_file": rows_in_file,
        "created": created,
        "failed": len(errors),
        "errors": errors[:MAX_ERRORS_RETURNED],
        "notes": sorted(notes),
    }
