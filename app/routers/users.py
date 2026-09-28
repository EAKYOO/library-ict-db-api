from fastapi import APIRouter,Depends,HTTPException, Header
from fastapi.security import OAuth2PasswordRequestForm
from app.schemas import UserOut, UserCreate, UserUpdate, UserRoleUpdate
from app.database import get_db
from typing import Annotated
from sqlalchemy.orm import Session
from app.crud import get_user_by_username, create_user, get_users, update_user, delete_user, update_user_role

from app.auth import verify_password, create_access_token, get_current_admin, get_current_user
from app.models import User

router = APIRouter(tags=["users"])

@router.post("/register", response_model=UserOut)
def register(user: UserCreate, db: Annotated[Session, Depends(get_db)], current_user: Annotated[User, Depends(get_current_admin)]):
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

@router.get("/users/me", response_model=UserOut)
def read_own_profile(current_user: Annotated[User, Depends(get_current_user)]):
    return current_user

@router.put("/users/me", response_model=UserOut)
def edit_own_profile(
    user: UserUpdate,
    current_user: Annotated[User, Depends(get_current_user)],
    db: Annotated[Session, Depends(get_db)],
):
    return update_user(db, current_user.username, user)  # type: ignore

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
def remove_user(
    username: str,
    db: Annotated[Session, Depends(get_db)],
    admin: Annotated[User, Depends(get_current_admin)],
    admin_delete_confirmed: str | None = Header(
        default=None,
        alias="X-Admin-Delete-Confirmed",
    ),
):
    target_user = get_user_by_username(db, username)

    if target_user is None:
        raise HTTPException(
            status_code=404,
            detail="User not found",
        )

    # Prevent an administrator from deleting their own account
    # through the Users management page.
    if target_user.username == admin.username:
        raise HTTPException(
            status_code=403,
            detail="You cannot delete your own account here.",
        )

    # Administrators require the special explicit confirmation flow.
    if target_user.role == "admin":

        if admin_delete_confirmed != target_user.username:
            raise HTTPException(
                status_code=403,
                detail="Administrator deletion requires explicit confirmation.",
            )

        # Never allow the last administrator to be removed.
        admin_count = (
            db.query(User)
            .filter(User.role == "admin")
            .count()
        )

        if admin_count <= 1:
            raise HTTPException(
                status_code=400,
                detail="You cannot delete the last administrator.",
            )

    deleted = delete_user(db, username)

    if deleted is None:
        raise HTTPException(
            status_code=404,
            detail="User not found",
        )

    return {
        "message": "User deleted successfully",
        "username": deleted.username,
    }


@router.put("/users/{username}/role", response_model=UserOut)
def change_user_role(
    username: str,
    payload: UserRoleUpdate,
    db: Annotated[Session, Depends(get_db)],
    admin: Annotated[User, Depends(get_current_admin)],
):
    target_user = get_user_by_username(db, username)

    if target_user is None:
        raise HTTPException(
            status_code=404,
            detail="User not found",
        )

    # Prevent administrators from changing their own role.
    if target_user.username == admin.username:
        raise HTTPException(
            status_code=403,
            detail="You cannot change your own role here.",
        )

    # An administrator cannot be demoted through the normal
    # role selector. They must use the explicit delete flow.
    if target_user.role == "admin" and payload.role != "admin":
        raise HTTPException(
            status_code=403,
            detail=(
                "Administrator accounts cannot be demoted. "
                "Delete the administrator explicitly if removal is required."
            ),
        )

    updated = update_user_role(
        db,
        username,
        payload.role,
    )

    if updated is None:
        raise HTTPException(
            status_code=404,
            detail="User not found",
        )

    return updated
            
        


    
