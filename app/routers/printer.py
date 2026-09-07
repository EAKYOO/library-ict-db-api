from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import  PrinterOut, PrinterCreate
from app.crud import get_printers, get_printer, create_printer, delete_printer, update_printer
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/printer", tags=["printer"])

@router.get("/", response_model=list[PrinterOut])
def list_printers(db: Annotated[Session, Depends(get_db)]):
    return get_printers(db)

@router.get("/{printer_id}", response_model=PrinterOut)
def read_printer(printer_id: int, db: Annotated[Session, Depends(get_db)]):
    printer = get_printer(db,printer_id)
    if printer is None:
        raise HTTPException(status_code=404, detail="printer not found")
    return printer

@router.post("/", response_model=PrinterOut)
def add_printer(printer: PrinterCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_printer(db,printer)

@router.put("/{printer_id}", response_model=PrinterOut)
def edit_printer(printer_id: int, printer: PrinterCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_printer(db,printer_id,printer)
    if updated is None:
        raise HTTPException(status_code=404, detail="printer not found")
    return updated

@router.delete("/{printer_id}")
def remove_printer(printer_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_printer(db,printer_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="printer not Found")
    return {"message":"printer deleted"}


