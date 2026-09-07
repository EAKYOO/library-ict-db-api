from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import  ComputerSetOut, ComputerSetCreate
from app.crud import get_computer_sets, get_computer_set, create_computer_set, delete_computer_set, update_computer_set
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/computer_set", tags=["computer_set"])

@router.get("/", response_model=list[ComputerSetOut])
def list_computer_sets(db: Annotated[Session, Depends(get_db)]):
    return get_computer_sets(db)

@router.get("/{computer_id}", response_model=ComputerSetOut)
def read_computer_set(computer_id: int, db: Annotated[Session, Depends(get_db)]):
    computer_set = get_computer_set(db,computer_id)
    if computer_set is None:
        raise HTTPException(status_code=404, detail="Computer_set not found")
    return computer_set

@router.post("/", response_model=ComputerSetOut)
def add_computer_set(computer_set: ComputerSetCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_computer_set(db,computer_set)

@router.put("/{computer_id}", response_model=ComputerSetOut)
def edit_computer_set(computer_id: int, computer_set: ComputerSetCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_computer_set(db,computer_id,computer_set)
    if updated is None:
        raise HTTPException(status_code=404, detail="Computer_set not found")
    return updated

@router.delete("/{computer_id}")
def remove_computer_set(computer_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_computer_set(db,computer_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="computer_set not Found")
    return {"message":"Computer_set deleted"}


