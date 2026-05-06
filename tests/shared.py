import pytest
from web import create_app

ANIMAL_DATA = {
    "owner": "DUMMY_OWNER",
    "name": "Rufus",
    "species": "Dog",
    "breed": "Corgi",
    "gender": "Male",
    "age": 6,
    "size": "small",
    "color": "Yellow",
    "house_trained": "House trained",
    "description": "Woof woof",
}

@pytest.fixture(scope="module")
def client():
    app = create_app()
    app.config["TESTING"] = True
    with app.test_client() as client:
        yield client
