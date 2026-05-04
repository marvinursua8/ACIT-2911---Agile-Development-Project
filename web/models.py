from peewee import Model, AutoField, CharField, ForeignKeyField, IntegerField, BooleanField, Check
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
    

class Animal(Model):
    class Meta:
        database = db
        table_name = "animals"

    id = AutoField()
    owner = ForeignKeyField(User, backref="animals")
    name = CharField(max_length=20)
    species = CharField(max_length=20)
    breed = CharField(max_length=20)
    gender = CharField(max_length=10)
    age = IntegerField()
    size = CharField(constraints=[Check("size IN ('small', 'medium', 'large')")])
    color = CharField(max_length=20)
    house_trained = CharField(constraints=[Check("house_trained IN ('House trained', 'Not house trained')")])
    description = CharField()

    def to_dict(self):
        return {
            "id": self.id,
            "name": self.name,
            "species": self.species,
            "breed": self.breed,
            "gender": self.gender,
            "age": self.age,
            "size": self.size,
            "color": self.color,
            "house_trained": self.house_trained,
            "description": self.description
        }
    
class Image(Model):
    class Meta:
        database  = db
        table_name = "images"

    id = AutoField()
    url = CharField()
    animal = ForeignKeyField(Animal, backref="images")
    is_primary= BooleanField(default=False)

    def to_dict(self):
        return {
            "id": self.id,
            "url": self.url,
            "animal_id": self.animal.id,
            "is_primary": self.is_primary
        }
