from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import  ComponentTypeOut, ComponentTypeCreate
from app.crud import get_component_types, get_component_type, create_component_type, delete_component_type, update_component_type
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/component_type", tags=["component_type"])

@router.get("/", response_model=list[ComponentTypeOut])
def list_component_types(db: Annotated[Session, Depends(get_db)]):
    return get_component_types(db)

@router.get("/{component_type_id}", response_model=ComponentTypeOut)
def read_component_type(component_type_id: int, db: Annotated[Session, Depends(get_db)]):
    component_type = get_component_type(db,component_type_id)
    if component_type is None:
        raise HTTPException(status_code=404, detail="Component_type not found")
    return component_type

@router.post("/", response_model=ComponentTypeOut)
def add_component_type(component_type: ComponentTypeCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_component_type(db,component_type)

@router.put("/{component_type_id}", response_model=ComponentTypeOut)
def edit_component_type(component_type_id: int, component_type: ComponentTypeCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_component_type(db,component_type_id,component_type)
    if updated is None:
        raise HTTPException(status_code=404, detail="Component_type not found")
    return updated

@router.delete("/{component_type_id}")
def remove_component_type(component_type_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_component_type(db,component_type_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="Component_type not Found")
    return {"message":"Component_type deleted"}


