from peewee import Model, AutoField, CharField, DateTimeField, ForeignKeyField, IntegerField, FloatField, BigIntegerField
import datetime
from .database import db

class User(Model):
    class Meta:
        database = db
        table_name = "users"

    id = AutoField()
    first_name = CharField(max_length=20)
    last_name = CharField(max_length=20)
    email = CharField(max_length=30)
    phone_number = CharField(max_length=12)

    def to_dict(self):
        return {
            "id": self.id,
            "first_name": self.first_name,
            "last_name": self.last_name,
            "email": self.email,
            "phone_number": self.phone_number
        }
