from peewee import Model, SqliteDatabase

db = SqliteDatabase(":memory:")

class BaseModel(Model):
    class Meta:
        database = db