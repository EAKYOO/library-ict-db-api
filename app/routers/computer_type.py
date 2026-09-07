from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import  ComputerTypeOut, ComputerTypeCreate
from app.crud import get_computer_types, get_computer_type, create_computer_type, delete_computer_type, update_computer_type
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/computer_type", tags=["computer_type"])

@router.get("/", response_model=list[ComputerTypeOut])
def list_computer_types(db: Annotated[Session, Depends(get_db)]):
    return get_computer_types(db)

@router.get("/{computer_type_id}", response_model=ComputerTypeOut)
def read_computer_type(computer_type_id: int, db: Annotated[Session, Depends(get_db)]):
    computer_type = get_computer_type(db,computer_type_id)
    if computer_type is None:
        raise HTTPException(status_code=404, detail="Computer_type not found")
    return computer_type

@router.post("/", response_model=ComputerTypeOut)
def add_computer_type(computer_type: ComputerTypeCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_computer_type(db,computer_type)

@router.put("/{computer_type_id}", response_model=ComputerTypeOut)
def edit_computer_type(computer_type_id: int, computer_type: ComputerTypeCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_computer_type(db,computer_type_id,computer_type)
    if updated is None:
        raise HTTPException(status_code=404, detail="Computer_type not found")
    return updated

@router.delete("/{computer_type_id}")
def remove_computer_type(computer_type_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_computer_type(db,computer_type_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="Computer_type not Found")
    return {"message":"Computer_type deleted"}


