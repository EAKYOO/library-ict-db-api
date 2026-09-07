from datetime import date, datetime
from typing import Literal

from pydantic import BaseModel

class LibraryBase(BaseModel):
    library_name: str
    building_desc: str | None = None

class LibraryCreate(LibraryBase):
    pass

class LibraryOut(LibraryBase):
    library_id: int

    # allows Pydantic to read data from SQLAlchemy objects
    class Config:
        from_attributes = True

 #dealing roomtype schema
class RoomTypeBase(BaseModel):
    type_name: str

class RoomTypeCreate(RoomTypeBase):
    pass

class RoomTypeOut(RoomTypeBase):
    room_type_id: int

    class Config:
        from_attributes = True

#dealing status schema
class StatusBase(BaseModel):
    status_name: str

class StatusCreate(StatusBase):
    pass

class StatusOut(StatusBase):
    status_id: int

    class Config:
        from_attributes = True

#dealing Component_type schema
class ComponentTypeBase(BaseModel):
    type_name: str

class ComponentTypeCreate(ComponentTypeBase):
    pass

class ComponentTypeOut(ComponentTypeBase):
    component_type_id: int

    class Config:
        from_attributes = True

#dealing computer_type schema
class ComputerTypeBase(BaseModel):
    type_name: str

class ComputerTypeCreate(ComputerTypeBase):
    pass

class ComputerTypeOut(ComputerTypeBase):
    computer_type_id: int

    class Config:
        from_attributes = True    

#dealing user schema
class UserBase(BaseModel):
    username: str
   
class UserCreate(UserBase):
    password: str

class UserUpdate(BaseModel):
    username: str | None = None
    password: str | None = None
    
class UserOut(UserBase):
    user_id: int
    role: str
    created_at: datetime

    class Config:
        from_attributes = True

#dealing room schema
class RoomBase(BaseModel):
    room_name: str
    library_id: int
    room_type_id: int
    floor_no: str | None = None

class RoomCreate(RoomBase):
    pass

class RoomOut(RoomBase):
    room_id: int

    class Config:
        from_attributes = True

#dealing computer_set schema
class ComputerSetBase(BaseModel):
    room_id: int
    computer_type_id: int
    inventory_barcode: str | None = None
    serial_number: str | None = None
    brand: str | None = None
    model: str | None = None
    purchase_date: date | None = None
    remarks: str | None = None

class  ComputerSetCreate(ComputerSetBase):
    pass

class ComputerSetOut(ComputerSetBase):
    computer_id: int
    date_added: date

    class Config:
        from_attributes = True

#dealing component schema
class ComponentBase(BaseModel):
    computer_id: int | None = None
    component_type_id: int
    room_id: int
    inventory_barcode: str | None = None
    serial_number: str | None = None
    brand: str | None = None
    model: str | None = None
    status_id: int
    last_checked: date | None = None
    remarks: str | None = None

class ComponentCreate(ComponentBase):
    pass

class ComponentOut(ComponentBase):
    component_id: int

    class Config:
        from_attributes = True

#dealing printer schema
class PrinterBase(BaseModel):
    room_id: int
    inventory_barcode: str | None = None
    serial_number: str | None = None
    brand: str | None = None
    model: str | None = None
    printer_type: str | None = None
    status_id: int
    purchase_date: date | None = None
    remarks: str | None = None

class PrinterCreate(PrinterBase):
    pass

class PrinterOut(PrinterBase):
    printer_id: int

    class Config:
        from_attributes = True

#dealing maintenance_log schema
class MaintenanceLogBase(BaseModel):
    item_type: Literal["Computer", "Component", "Printer"]
    item_id: int
    date_reported: date
    issue_description: str | None = None
    date_resolved: date | None = None
    action_taken: str | None = None
    resolved_status_id: int | None = None
    reported_by_user_id: int | None = None

class MaintenanceLogCreate(MaintenanceLogBase):
    pass

class MaintenanceLogOut(MaintenanceLogBase):
    log_id: int

    class Config:
        from_attributes = True