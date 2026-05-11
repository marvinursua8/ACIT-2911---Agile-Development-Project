import pytest
from web import create_app
from web.models import Animal, Image

ANIMAL_DATA = {
    "owner": "DUMMY_OWNER",
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

TEST_USER_ID = 3 # Jane Doe

@pytest.fixture(scope="module")
def client():
    app = create_app()
    app.config["TESTING"] = True
    with app.test_client() as client:
        yield client

@pytest.fixture(scope="module")
def pet():
    yield Animal.get_or_none(Animal.name == ANIMAL_DATA["name"])
    # cleanup
    Image.delete().where(Image.animal_id == pet.id).execute()
    Animal.delete().where(Animal.id == pet.id).execute()