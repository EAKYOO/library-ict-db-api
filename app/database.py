from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
import os
from dotenv import load_dotenv
from urllib.parse import quote

# Load environment variables
load_dotenv()

#database connection parameters
DB_USER = os.getenv("DB_USER")
DB_PASSWORD_RAW = os.getenv("DB_PASSWORD")
if DB_PASSWORD_RAW is None:
    raise ValueError("DB_PASSWORD not found in environment — check your .env file")
DB_PASSWORD = quote(DB_PASSWORD_RAW)
DB_HOST = "localhost"
DB_PORT = "3306"
DB_NAME = "library_ict_db"

# connection to database and engine creation
LIBRARY_DATABASE_URL = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
engine = create_engine(LIBRARY_DATABASE_URL)

# to create a session for database operations
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

#Base: parent class where all models.py ORM classes will inherit from
Base = declarative_base()

# to get a session for database operations
def get_db():
    with SessionLocal() as db:
        yield db



