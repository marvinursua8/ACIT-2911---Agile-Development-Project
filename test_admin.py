from web import Admin, db 
from playhouse.db_url import connect

DATABASE_URL = "postgresql://postgres.xrygojfhrciovwsakyxk:apples7894561230qweA!@aws-1-us-east-1.pooler.supabase.com:6543/postgres"

print("1. Connecting to Supabase...")
supabase_db = connect(DATABASE_URL)
db.initialize(supabase_db)

if __name__ == '__main__':
    db.connect()

    print("2. Dropping old table...")
    db.drop_tables([Admin])

    print("3. Creating new table...")
    db.create_tables([Admin])


    admin = Admin(username="my_admin_name") 
    admin.set_password("my_super_secure_password")
    admin.save()
    
    print("4. Admin account created successfully!")
    
    db.close()