from fastapi import HTTPException
from sqlalchemy.orm import Session
from app.models import User, Library, RoomType, Status, ComponentType, ComputerType, Room, ComputerSet, Component, Printer, MaintenanceLog
from app.schemas import UserCreate, LibraryCreate, RoomTypeCreate, StatusCreate, ComponentTypeCreate, ComputerTypeCreate, RoomCreate, ComputerSetCreate, ComponentCreate, PrinterCreate, MaintenanceLogCreate, UserUpdate
from app.auth import hash_password

def get_user_by_username(db:Session , username: str):
    return db.query(User).filter(User.username == username).first()

def get_users(db: Session):
    return db.query(User).all()

def get_user_by_id(db: Session, user_id: int):
    return db.query(User).filter(User.user_id == user_id).first()

def create_user(db:Session, user: UserCreate):
    hashed_pw = hash_password(user.password)
    new_user = User(username = user.username, hashed_password = hashed_pw, role="user")
    db.add(new_user)
    db.commit()
    db.refresh(new_user)
    return new_user

def update_user(db: Session, username: str, user: UserUpdate):
    db_user = get_user_by_username(db, username)
    if db_user is None:
        return None
    update_data = user.model_dump(exclude_unset=True)
    if "password" in update_data:
        db_user.hashed_password = hash_password(update_data.pop("password"))
    for key, value in update_data.items():
        setattr(db_user, key, value)
    db.commit()
    db.refresh(db_user)
    return db_user

def delete_user(db: Session, username: str):
    user_to_delete = get_user_by_username(db,username)
    if user_to_delete is None:
        return None
    db.delete(user_to_delete)
    db.commit()
    return user_to_delete

#dealing library crud
def get_libraries(db:Session):
    return db.query(Library).all()

def get_library(db:Session, library_id:int):
    return db.query(Library).filter(Library.library_id == library_id).first()

def create_library(db: Session, library: LibraryCreate):
    new_library = Library(**library.model_dump())
    db.add(new_library)
    db.commit()
    db.refresh(new_library)
    return new_library

def update_library(db: Session, library_id: int, library: LibraryCreate):
    db_library = get_library(db,library_id)
    if db_library is None:
        return None
    for key, value in library.model_dump().items():
        setattr(db_library, key, value)
    db.commit()
    db.refresh(db_library)
    return db_library

def delete_library(db: Session, library_id: int):
    db_library = get_library(db, library_id)
    if db_library is None:
        return None
    db.delete(db_library)
    db.commit()
    return db_library

#dealing Roomtype crud
def get_room_types(db: Session):
    return db.query(RoomType).all()

def get_room_type(db: Session, room_type_id: int):
    return db.query(RoomType).filter(RoomType.room_type_id == room_type_id).first()

def create_room_type(db: Session, room_type: RoomTypeCreate):
    new_room_type = RoomType(**room_type.model_dump())
    db.add(new_room_type)
    db.commit()
    db.refresh(new_room_type)
    return new_room_type

def update_room_type(db: Session, room_type_id: int, room_type: RoomTypeCreate):
    db_room_type = get_room_type(db,room_type_id)
    if db_room_type is None:
        return None
    for key, value in room_type.model_dump().items():
        setattr(db_room_type, key, value)
    db.commit()
    db.refresh(db_room_type)
    return db_room_type  

def delete_room_type(db: Session, room_type_id: int):
    room_type = get_room_type(db, room_type_id)
    if room_type is None:
        return None
    db.delete(room_type)
    db.commit()
    return room_type

#dealing status crud
def get_statuses(db: Session):
    return db.query(Status).all()

def get_status(db: Session, status_id: int):
    return db.query(Status).filter(Status.status_id == status_id).first()

def create_status(db: Session, status: StatusCreate): 
    new_status = Status(**status.model_dump())
    db.add(new_status)
    db.commit()
    db.refresh(new_status)
    return new_status

def update_status(db: Session, status_id: int, status: StatusCreate):
    db_status = get_status(db,status_id)
    if db_status is None:
        return None
    for key, value in status.model_dump().items():
         setattr(db_status, key, value)
    db.commit()
    db.refresh(db_status)
    return db_status

def delete_status(db: Session, status_id: int):
    status = get_status(db,status_id)
    if status is None:
        return None
    db.delete(status)
    db.commit()
    return status

#dealing component_type crud
def get_component_types(db: Session):
    return db.query(ComponentType).all()

def get_component_type(db: Session, component_type_id: int):
    return db.query(ComponentType).filter(ComponentType.component_type_id == component_type_id).first()

def create_component_type(db: Session, component_type: ComponentTypeCreate): 
    new_component_type = ComponentType(**component_type.model_dump())
    db.add(new_component_type)
    db.commit()
    db.refresh(new_component_type)
    return new_component_type

def update_component_type(db: Session, component_type_id: int, component_type: ComponentTypeCreate):
    db_component_type = get_component_type(db,component_type_id)
    if db_component_type is None:
        return None
    for key, value in component_type.model_dump().items():
        setattr(db_component_type, key, value)
    db.commit()
    db.refresh(db_component_type)
    return db_component_type

def delete_component_type(db: Session, component_type_id: int):
    component_type = get_component_type(db,component_type_id)
    if component_type is None:
        return None
    db.delete(component_type)
    db.commit()
    return component_type

#dealing computer_type crud
def get_computer_types(db: Session):
    return db.query(ComputerType).all()

def get_computer_type(db: Session, computer_type_id: int):
    return db.query(ComputerType).filter(ComputerType.computer_type_id == computer_type_id).first()

def create_computer_type(db: Session, computer_type: ComputerTypeCreate): 
    new_computer_type = ComputerType(**computer_type.model_dump())
    db.add(new_computer_type)
    db.commit()
    db.refresh(new_computer_type)
    return new_computer_type

def update_computer_type(db: Session, computer_type_id: int, computer_type: ComputerTypeCreate):
    db_computer_type = get_computer_type(db,computer_type_id)
    if db_computer_type is None:
        return None
    for key, value in computer_type.model_dump().items():
        setattr(db_computer_type, key, value)
    db.commit()
    db.refresh(db_computer_type)
    return db_computer_type

def delete_computer_type(db: Session, computer_type_id: int):
    computer_type = get_computer_type(db,computer_type_id)
    if computer_type is None:
        return None
    db.delete(computer_type)
    db.commit()
    return computer_type


#dealing room crud
def get_rooms(db: Session):
    return db.query(Room).all()

def get_room(db: Session, room_id: int):
    return db.query(Room).filter(Room.room_id == room_id).first()

def create_room(db: Session, room: RoomCreate): 
    new_room = Room(**room.model_dump())
    db.add(new_room)
    db.commit()
    db.refresh(new_room)
    return new_room

def update_room(db: Session, room_id: int, room: RoomCreate):
    db_room = get_room(db,room_id)
    if db_room is None:
        return None
    for key, value in room.model_dump().items():
        setattr(db_room, key, value)
    db.commit()
    db.refresh(db_room)
    return db_room

def delete_room(db: Session, room_id: int):
    room = get_room(db,room_id)
    if room is None:
        return None
    db.delete(room)
    db.commit()
    return room 

#dealing Computer_set crud
def get_computer_sets(db: Session):
    return db.query(ComputerSet).all()

def get_computer_set(db: Session, computer_id: int):
    return db.query(ComputerSet).filter(ComputerSet.computer_id == computer_id).first()

def create_computer_set(db: Session, computer_set: ComputerSetCreate): 
    new_computer_set = ComputerSet(**computer_set.model_dump())
    db.add(new_computer_set)
    db.commit()
    db.refresh(new_computer_set)
    return new_computer_set

def update_computer_set(db: Session, computer_id: int, computer_set: ComputerSetCreate):
    db_computer_set = get_computer_set(db,computer_id)
    if db_computer_set is None:
        return None
    for key, value in computer_set.model_dump().items():
        setattr(db_computer_set, key, value)
    db.commit()
    db.refresh(db_computer_set)
    return db_computer_set

def delete_computer_set(db: Session, computer_id: int):
    computer_set = get_computer_set (db,computer_id)
    if computer_set is None:
        return None
    db.delete(computer_set )
    db.commit()
    return computer_set 

#dealing component crud
def get_components(db: Session):
    return db.query(Component).all()

def get_component(db: Session, component_id: int):
    return db.query(Component).filter(Component.component_id == component_id).first()

def create_component(db: Session, component: ComponentCreate): 
    new_component = Component(**component.model_dump())
    db.add(new_component)
    db.commit()
    db.refresh(new_component)
    return new_component

def update_component(db: Session, component_id: int, component: ComponentCreate):
    db_component = get_component(db,component_id)
    if db_component is None:
        return None
    for key, value in component.model_dump().items():
        setattr(db_component, key, value)
    db.commit()
    db.refresh(db_component)
    return db_component

def delete_component(db: Session, component_id: int):
    component = get_component(db,component_id)
    if component is None:
        return None
    db.delete(component)
    db.commit()
    return component 


#dealing printer crud
def get_printers(db: Session):
    return db.query(Printer).all()

def get_printer(db: Session, printer_id: int):
    return db.query(Printer).filter(Printer.printer_id == printer_id).first()

def create_printer(db: Session, printer: PrinterCreate): 
    new_printer = Printer(**printer.model_dump())
    db.add(new_printer)
    db.commit()
    db.refresh(new_printer)
    return new_printer

def update_printer(db: Session, printer_id: int, printer: PrinterCreate):
    db_printer = get_printer(db,printer_id)
    if db_printer is None:
        return None
    for key, value in printer.model_dump().items():
        setattr(db_printer, key, value)
    db.commit()
    db.refresh(db_printer)
    return db_printer

def delete_printer(db: Session, printer_id: int):
    printer = get_printer(db,printer_id)
    if printer is None:
        return None
    db.delete(printer)
    db.commit()
    return printer 

#dealing maintenance_log crud
def get_logs(db: Session):
    return db.query(MaintenanceLog).all()

def get_log(db: Session, log_id: int):
    return db.query(MaintenanceLog).filter(MaintenanceLog.log_id == log_id).first()

def create_log(db: Session, log: MaintenanceLogCreate): 
    new_log = MaintenanceLog(**log.model_dump())
    db.add(new_log)
    db.commit()
    db.refresh(new_log)
    return new_log

def update_log(db: Session, log_id: int, log: MaintenanceLogCreate):
    db_log = get_log(db,log_id)
    if db_log is None:
        return None
    for key, value in log.model_dump().items():
        setattr(db_log, key, value)
    db.commit()
    db.refresh(db_log)
    return db_log

def delete_log(db: Session, log_id: int):
    log = get_log(db,log_id)
    if log is None:
        return None
    db.delete(log)
    db.commit()
    return log 

