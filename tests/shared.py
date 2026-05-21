import pytest
from flask import abort
from web import create_app
from web.models import Animal, Image
from web.database import db

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
    "adopted": "False"
}

TEST_IMAGE_URL = "www.example.com/test.jpg"

TEST_NON_PRIMARY_IMAGE_URL = "www.example.com/test2.jpg"


@pytest.fixture(scope="module")
def client():
    app = create_app()
    app.config["TESTING"] = True
    @app.route('/test500')
    def adopt():
        abort(500)
    with app.test_client() as client:
        yield client

@pytest.fixture(scope="module")
def add_pet():
    with db.atomic():
        pet = Animal.create(**ANIMAL_DATA)
        Image.create(animal=pet, url=TEST_IMAGE_URL, is_primary=True)
        Image.create(animal=pet, url=TEST_NON_PRIMARY_IMAGE_URL, is_primary=False)

    yield pet
    # cleanup
    Image.delete().where(Image.animal_id == pet.id).execute()
    Animal.delete().where(Animal.id == pet.id).execute()

@pytest.fixture(scope="module")
def get_pet(client):
    pet = Animal.get_or_none(Animal.name == ANIMAL_DATA["name"])
    yield pet


@pytest.fixture(scope="module")
def cleanup():
    yield
    test_animals = list(Animal.select().where(Animal.name == ANIMAL_DATA["name"]))
    if test_animals:
        animal_ids = [animal.id for animal in test_animals]
        Image.delete().where(Image.animal_id.in_(animal_ids)).execute()
        Animal.delete().where(Animal.id.in_(animal_ids)).execute()