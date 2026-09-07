from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas import LibraryOut, LibraryCreate
from app.crud import get_libraries, get_library, create_library, delete_library, update_library
from app.auth import get_current_admin
from typing import Annotated

router = APIRouter(prefix = "/libraries", tags=["libraries"])

@router.get("/", response_model=list[LibraryOut])
def list_libraries(db: Annotated[Session, Depends(get_db)]):
    return get_libraries(db)

@router.get("/{library_id}", response_model=LibraryOut)
def read_library(library_id: int, db: Annotated[Session, Depends(get_db)]):
    library = get_library(db,library_id)
    if library is None:
        raise HTTPException(status_code=404, detail="Library not found")
    return library

@router.post("/", response_model=LibraryOut)
def add_library(library: LibraryCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return create_library(db,library)

@router.put("/{library_id}", response_model=LibraryOut)
def edit_library(library_id: int, library: LibraryCreate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated = update_library(db,library_id,library)
    if updated is None:
        raise HTTPException(status_code=404, detail="Library not found")
    return updated

@router.delete("/{library_id}")
def remove_library(library_id: int, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_library(db,library_id)
    if deleted is None:
        raise HTTPException(status_code=404, detail="Library not Found")
    return {"message":"Library deleted"}


