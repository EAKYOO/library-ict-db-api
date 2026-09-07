from app.database import SessionLocal
from app.models import Library, User, ComputerSet

db = SessionLocal()

libraries = db.query(Library).all()
print("Libraries:", [(l.library_id, l.library_name) for l in libraries])

users = db.query(User).all()
print("Users:", [(u.user_id, u.username, u.role) for u in users])

computers = db.query(ComputerSet).all()
print("Computers:", [(c.computer_id, c.brand, c.model) for c in computers])

db.close()