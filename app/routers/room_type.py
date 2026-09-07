from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import  RoomTypeOut, RoomTypeCreate
from app.crud import get_room_types, get_room_type, create_room_type, delete_room_type, update_room_type
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/room_type", tags=["room_type"])

@router.get("/", response_model=list[RoomTypeOut])
def list_room_types(db: Annotated[Session, Depends(get_db)]):
    return get_room_types(db)

@router.get("/{room_type_id}", response_model=RoomTypeOut)
def read_room_type(room_type_id: int, db: Annotated[Session, Depends(get_db)]):
    room_type = get_room_type(db,room_type_id)
    if room_type is None:
        raise HTTPException(status_code=404, detail="room_type not found")
    return room_type

@router.post("/", response_model=RoomTypeOut)
def add_room_type(room_type: RoomTypeCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_room_type(db,room_type)

@router.put("/{room_type_id}", response_model=RoomTypeOut)
def edit_room_type(room_type_id: int, room_type: RoomTypeCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_room_type(db,room_type_id,room_type)
    if updated is None:
        raise HTTPException(status_code=404, detail="room_type not found")
    return updated

@router.delete("/{room_type_id}")
def remove_room_type(room_type_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_room_type(db,room_type_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="room_type not Found")
    return {"message":"Room_type deleted"}


