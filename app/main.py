from fastapi import FastAPI
from app.routers import component_type, status, users, library, maintenance, room_type, computer_type, room, computer_set, component, printer, import_data
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:5173"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(users.router)
app.include_router(library.router)
app.include_router(maintenance.router)
app.include_router(room_type.router)
app.include_router(component_type.router)
app.include_router(status.router)
app.include_router(computer_type.router)
app.include_router(component.router)
app.include_router(computer_set.router)
app.include_router(printer.router)
app.include_router(room.router)
app.include_router(import_data.router)
