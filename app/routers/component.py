from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import  ComponentOut, ComponentCreate
from app.crud import get_components, get_component, create_component, delete_component, update_component
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/component", tags=["component"])

@router.get("/", response_model=list[ComponentOut])
def list_components(db: Annotated[Session, Depends(get_db)]):
    return get_components(db)

@router.get("/{component_id}", response_model=ComponentOut)
def read_component(component_id: int, db: Annotated[Session, Depends(get_db)]):
    component = get_component(db,component_id)
    if component is None:
        raise HTTPException(status_code=404, detail="Component not found")
    return component

@router.post("/", response_model=ComponentOut)
def add_component(component: ComponentCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_component(db,component)

@router.put("/{component_id}", response_model=ComponentOut)
def edit_component(component_id: int, component: ComponentCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_component(db,component_id,component)
    if updated is None:
        raise HTTPException(status_code=404, detail="Component not found")
    return updated

@router.delete("/{component_id}")
def remove_component(component_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_component(db,component_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="Component not Found")
    return {"message":"Component deleted"}


