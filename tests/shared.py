import pytest
from web import create_app
from web.models import Animal, Image
from web.database import db
from uuid import uuid4

TEST_USER_ID = 3 # Jane Doe

ANIMAL_DATA = {
    "owner": TEST_USER_ID,
    "name": "Mr. Test",
    "species": "Dog",
    "breed": "Corgi",
    "gender": "Male",
    "age": "6",
    "size": "small",
    "color": "Yellow",
    "house_trained": "House trained",
    "description": "Woof woof",
}

TEST_IMAGE_URL = "www.example.com/test.jpg"

TEST_NON_PRIMARY_IMAGE_URL = "www.example.com/test2.jpg"


@pytest.fixture(scope="module")
def client():
    app = create_app()
    app.config["TESTING"] = True
    with app.test_client() as client:
        yield client

@pytest.fixture(scope="module")
def add_pet():
    with db.atomic():
        pet = Animal.create(**ANIMAL_DATA)
        Image.create(animal=pet, url=TEST_IMAGE_URL, is_primary=True)

    yield pet

@pytest.fixture(scope="module")
def get_pet(client):
    pet = Animal.get_or_none(Animal.name == ANIMAL_DATA["name"])
    yield pet
    # cleanup
    Image.delete().where(Image.animal_id == pet.id).execute()
    Animal.delete().where(Animal.id == pet.id).execute()