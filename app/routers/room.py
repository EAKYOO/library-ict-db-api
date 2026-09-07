from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import  RoomOut, RoomCreate
from app.crud import get_rooms, get_room, create_room, delete_room, update_room
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/room", tags=["room"])

@router.get("/", response_model=list[RoomOut])
def list_rooms(db: Annotated[Session, Depends(get_db)]):
    return get_rooms(db)

@router.get("/{room_id}", response_model=RoomOut)
def read_room(room_id: int, db: Annotated[Session, Depends(get_db)]):
    room = get_room(db,room_id)
    if room is None:
        raise HTTPException(status_code=404, detail="Room not found")
    return room

@router.post("/", response_model=RoomOut)
def add_room(room: RoomCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_room(db,room)

@router.put("/{room_id}", response_model=RoomOut)
def edit_room(room_id: int, room: RoomCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_room(db,room_id,room)
    if updated is None:
        raise HTTPException(status_code=404, detail="Room not found")
    return updated

@router.delete("/{room_id}")
def remove_room(room_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_room(db,room_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="Room not Found")
    return {"message":"Room deleted"}


