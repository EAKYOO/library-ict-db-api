from io import BytesIO

import pandas as pd
from fastapi import APIRouter, Depends, File, HTTPException, UploadFile
from sqlalchemy.orm import Session

from app import crud, schemas
from app.auth import get_current_admin
from app.database import get_db

router = APIRouter(prefix="/import", tags=["import"])

# Maps a table's key (matches the frontend's ENTITIES config) to the
# Pydantic "Create" schema used to validate each row, and the crud
# function that actually inserts a validated row.
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
}


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
        if filename.endswith(".csv"):
            df = pd.read_csv(BytesIO(contents))
        elif filename.endswith((".xlsx", ".xls")):
            df = pd.read_excel(BytesIO(contents))
        else:
            raise HTTPException(status_code=400, detail="File must be .csv, .xlsx, or .xls")
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Could not read file: {e}")

    # Pandas represents empty cells as NaN; convert those to real None
    # so Pydantic treats them as "not provided" for optional fields.
    df = df.where(pd.notnull(df), None)

    created = 0
    errors = []

    for index, row in df.iterrows():
        row_dict = row.to_dict()
        try:
            validated = create_schema(**row_dict) # type: ignore
            create_func(db, validated)
            created += 1
        except Exception as e:
            # row 2 in the spreadsheet = index 0 in pandas (row 1 is the header)
            errors.append({"row": index + 2, "error": str(e)}) # type: ignore

    return {
        "table": table,
        "rows_in_file": len(df),
        "created": created,
        "failed": len(errors),
        "errors": errors[:25],  # cap so one huge bad file doesn't flood the response
    }
