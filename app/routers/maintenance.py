from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import MaintenanceLogOut, MaintenanceLogCreate
from app.crud import get_logs, get_log, create_log, delete_log, update_log
from app.auth import get_current_admin, get_current_user
from typing import Annotated

router = APIRouter(prefix = "/logs", tags=["Maintenance_logs"])

@router.get("/", response_model=list[MaintenanceLogOut])
def list_logs(db: Annotated[Session, Depends(get_db)], current_user= Depends(get_current_user)):
    return get_logs(db)

@router.get("/{log_id}", response_model=MaintenanceLogOut)
def read_maintenance_log(log_id: int, db: Annotated[Session, Depends(get_db)], current_user= Depends(get_current_user)):
    log = get_log(db,log_id)
    if log is None:
        raise HTTPException(status_code=404, detail="MaintenanceLog not found")
    return log

@router.post("/", response_model=MaintenanceLogOut)
def add_maintenance_log(maintenance_log: MaintenanceLogCreate, db: Annotated[Session, Depends(get_db)], current_user=Depends(get_current_user)):
    return create_log(db,maintenance_log)

@router.put("/{log_id}", response_model=MaintenanceLogOut)
def edit_maintenance_log(log_id: int, maintenance_log: MaintenanceLogCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_log(db,log_id,maintenance_log)
    if updated is None:
        raise HTTPException(status_code=404, detail="MaintenanceLog not found")
    return updated

@router.delete("/{log_id}")
def remove_maintenance_log(log_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_log(db,log_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="MaintenanceLog not found")
    return {"message":"MaintenanceLog deleted"}


