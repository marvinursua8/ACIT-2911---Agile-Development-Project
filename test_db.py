from playhouse.db_url import connect
from peewee import Model, CharField

# Your Supabase connection string
DATABASE_URL = "postgresql://postgres.xrygojfhrciovwsakyxk:apples7894561230qweA!@aws-1-us-east-1.pooler.supabase.com:6543/postgres"

print("1. Connecting to Supabase...")
db = connect(DATABASE_URL)

# Create a temporary model just for this test
class ConnectionTest(Model):
    status = CharField()

    class Meta:
        database = db

try:
    # Try to open the connection
    db.connect()
    print("✅ Connection successful!")

    # Try to create a table
    db.create_tables([ConnectionTest], safe=True)
    print("✅ Table created successfully!")

    # Try to write data
    ConnectionTest.create(status="Hello from Peewee!")
    print("✅ Data inserted successfully!")

    # Try to read data
    record = ConnectionTest.get()
    print(f"✅ Data read successfully: '{record.status}'")

except Exception as e:
    print(f"❌ ERROR: {e}")
finally:
    if not db.is_closed():
        db.close()