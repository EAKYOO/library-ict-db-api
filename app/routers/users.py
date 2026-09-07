from fastapi import APIRouter,Depends,HTTPException
from fastapi.security import OAuth2PasswordRequestForm
from app.schemas import UserOut, UserCreate, UserUpdate
from app.database import get_db
from typing import Annotated
from sqlalchemy.orm import Session
from app.crud import get_user_by_username, create_user, get_users, update_user, delete_user
from app.auth import verify_password, create_access_token, get_current_admin
from app.models import User

router = APIRouter(tags=["users"])

@router.post("/register", response_model=UserOut)
def register(user: UserCreate, db: Annotated[Session, Depends(get_db)]):
    existing_user = get_user_by_username(db, user.username)
    if existing_user:
        raise HTTPException(status_code=400, detail="username is already taken")
    return create_user(db,user)
        
@router.post("/login")
def login(form_data: Annotated[OAuth2PasswordRequestForm, Depends()], db: Annotated[Session, Depends(get_db)]):
    user = get_user_by_username(db, form_data.username)
    if not user or not verify_password(form_data.password, user.hashed_password): #type: ignore
        raise HTTPException(status_code=401, detail="Incorrect username or password")
    token = create_access_token(data= {"sub": user.username, "role": user.role})     
    return {"access_token": token , "token_type": "bearer"}  

@router.get("/users", response_model=list[UserOut])
def list_users(db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    return get_users(db)

@router.get("/users/{username}",response_model=UserOut)
def read_user(username: str, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    user = get_user_by_username(db,username)
    if user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return user

@router.put("/users/{username}", response_model=UserOut)
def edit_user(username: str, user: UserUpdate, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    updated_user = update_user(db,username,user)
    if updated_user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return updated_user

@router.delete("/users/{username}")
def remove_user(username: str, db: Annotated[Session, Depends(get_db)], admin=Depends(get_current_admin)):
    deleted = delete_user(db,username)
    if deleted is None:
        raise HTTPException(status_code=404, detail="User not found")
    return{"message":"User deleted"}
            
        


    
