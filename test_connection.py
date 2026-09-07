from app.database import engine
from sqlalchemy import text

try:
    with engine.connect() as connection:
        result = connection.execute(text("SELECT 1"))
        print("✅ Connected successfully:", result.fetchone())
except Exception as e:
    print("❌ Connection failed:", e)