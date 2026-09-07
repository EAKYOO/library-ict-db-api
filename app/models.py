from sqlalchemy import TIMESTAMP, CheckConstraint, Column, Integer, String, UniqueConstraint, func , ForeignKey , Date, null
from sqlalchemy.orm import relationship, Mapped, mapped_column, relationship
from app.database import Base
from sqlalchemy import Enum, TIMESTAMP, func
from typing import Optional
from datetime import datetime

class Library(Base):
    __tablename__ = "library"

    library_id = Column(Integer, primary_key=True, autoincrement=True)
    library_name = Column(String(50), nullable=False, unique=True)
    building_desc = Column(String(100))
    rooms = relationship("Room", back_populates="library")

class RoomType(Base):
    __tablename__ = "room_type"

    room_type_id = Column(Integer, primary_key=True, autoincrement=True)
    type_name = Column(String(50), nullable=False, unique=True)

class Status(Base):
    __tablename__ = "status"

    status_id = Column(Integer, primary_key=True, autoincrement=True)
    status_name = Column(String(30), nullable=False, unique=True)
    component = relationship("Component", back_populates="status")
    printer = relationship("Printer", back_populates="status")
    maintenance_log = relationship("MaintenanceLog", back_populates="status")

class ComponentType(Base):
    __tablename__ = "component_type"

    component_type_id = Column(Integer, primary_key=True, autoincrement=True)
    type_name = Column(String(50), nullable=False, unique=True)
    component = relationship("Component", back_populates="component_type")

class ComputerType(Base):
    __tablename__ = "computer_type"

    computer_type_id = Column(Integer, primary_key=True, autoincrement=True)
    type_name = Column(String(50), nullable=False, unique=True)

class User(Base):
    __tablename__ = "users"

    user_id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    username: Mapped[str] = mapped_column(String(50), nullable=False, unique=True)
    hashed_password: Mapped[str] = mapped_column(String(255), nullable=False)
    role: Mapped[str] = mapped_column(Enum("admin", "user", name="user_roles"), nullable=False)
    created_at: Mapped[Optional[datetime]] = mapped_column(TIMESTAMP, server_default=func.now())
    maintenance_logs: Mapped[list["MaintenanceLog"]] = relationship(back_populates="reporter")

class Room(Base):
    __tablename__ = "room"
    __table_args__ = (UniqueConstraint("library_id", "room_name"),)

    room_id = Column(Integer, primary_key=True, autoincrement=True)
    room_name = Column(String(50), nullable=False)
    library_id = Column(Integer, ForeignKey("library.library_id"), nullable=False)
    room_type_id = Column(Integer, ForeignKey("room_type.room_type_id"), nullable=False)
    floor_no = Column(String(20))
    library = relationship("Library", back_populates="rooms")
    computer_sets = relationship("ComputerSet", back_populates="room")
    component = relationship("Component", back_populates="room")
    printer = relationship("Printer", back_populates="room")

class ComputerSet(Base):
    __tablename__ = "computer_set"
    __table_args__ = (CheckConstraint("inventory_barcode IS NOT NULL OR serial_number IS NOT NULL"),)

    computer_id = Column(Integer, primary_key=True, autoincrement=True)
    room_id = Column(Integer, ForeignKey("room.room_id"), nullable=False)
    computer_type_id = Column(Integer, ForeignKey("computer_type.computer_type_id"), nullable=False)
    inventory_barcode = Column(String(30), nullable=True, unique=True)
    serial_number = Column(String(50), nullable=True, unique=True)
    brand = Column(String(50), nullable=True)
    model = Column(String(50), nullable=True)
    purchase_date = Column(Date, nullable=True)
    date_added = Column(Date, server_default=func.current_date())
    remarks = Column(String(255), nullable=True)
    room = relationship("Room", back_populates="computer_sets")
    component = relationship("Component", back_populates="computer_set")

class Component(Base):
    __tablename__ = "component"
    __table_args__ = (CheckConstraint("inventory_barcode IS NOT NULL OR serial_number IS NOT NULL"),)

    component_id = Column(Integer, primary_key=True, autoincrement=True)
    computer_id = Column(Integer, ForeignKey("computer_set.computer_id", ondelete="SET NULL"), nullable=True)
    component_type_id = Column(Integer, ForeignKey("component_type.component_type_id"), nullable=False)
    room_id = Column(Integer, ForeignKey("room.room_id"), nullable=False)
    inventory_barcode = Column(String(30), nullable=True, unique=True)
    serial_number = Column(String(50), nullable=True, unique=True)
    brand = Column(String(50), nullable=True)
    model = Column(String(50), nullable=True)
    status_id = Column(Integer, ForeignKey("status.status_id"), nullable=False)
    last_checked = Column(Date, nullable=True)
    remarks = Column(String(255), nullable=True)
    status = relationship("Status", back_populates="component")
    room = relationship("Room", back_populates="component")
    component_type = relationship("ComponentType", back_populates="component")
    computer_set = relationship("ComputerSet", back_populates="component")

class Printer(Base):
    __tablename__ = "printer"
    __table_args__ = (CheckConstraint("inventory_barcode IS NOT NULL OR serial_number IS NOT NULL"),)

    printer_id = Column(Integer, primary_key=True, autoincrement=True)
    room_id = Column(Integer, ForeignKey("room.room_id"),nullable=False)
    inventory_barcode = Column(String(30), nullable=True,unique=True)
    serial_number = Column(String(50), nullable=True,unique=True)
    brand = Column(String(50),nullable=True)
    model = Column(String(50),nullable=True)
    printer_type = Column(String(30),nullable=True)
    status_id = Column(Integer,ForeignKey("status.status_id"),nullable=False)
    purchase_date = Column(Date,nullable=True)
    remarks = Column(String(255),nullable=True)
    room = relationship("Room", back_populates="printer")
    status = relationship("Status", back_populates="printer")

class MaintenanceLog(Base):
    __tablename__ = "maintenance_log"

    log_id = Column(Integer, primary_key=True, autoincrement=True)
    item_type = Column(Enum("Computer", "Component", "Printer", name="item_type_enum"), nullable=False)
    item_id = Column(Integer, nullable=False)
    date_reported = Column(Date, nullable=False)
    issue_description = Column(String(255), nullable=True)
    date_resolved = Column(Date, nullable=True)
    action_taken = Column(String(255), nullable=True)
    resolved_status_id = Column(Integer, ForeignKey("status.status_id"), nullable=True)
    reported_by_user_id = Column(Integer, ForeignKey("users.user_id", ondelete="SET NULL"), nullable=True)
    reporter = relationship("User", back_populates="maintenance_logs")
    status = relationship("Status", back_populates="maintenance_log")




