from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import  StatusOut, StatusCreate
from app.crud import get_statuses, get_status, create_status, delete_status, update_status
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/status", tags=["status"])

@router.get("/", response_model=list[StatusOut])
def list_statuses(db: Annotated[Session, Depends(get_db)]):
    return get_statuses(db)

@router.get("/{status_id}", response_model=StatusOut)
def read_status(status_id: int, db: Annotated[Session, Depends(get_db)]):
    status = get_status(db,status_id)
    if status is None:
        raise HTTPException(status_code=404, detail="Status not found")
    return status

@router.post("/", response_model=StatusOut)
def add_status(status: StatusCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_status(db,status)

@router.put("/{status_id}", response_model=StatusOut)
def edit_status(status_id: int, status: StatusCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_status(db,status_id,status)
    if updated is None:
        raise HTTPException(status_code=404, detail="Status not found")
    return updated

@router.delete("/{status_id}")
def remove_status(status_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_status(db,status_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="status not Found")
    return {"message":"Status deleted"}


