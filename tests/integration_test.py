import pytest
from .shared import client, ANIMAL_DATA, TEST_IMAGE_URL
from web.models import Animal, User
from web.database import db

class TestIndex:
    def test_returns_200(self, client):
        response = client.get("/")
        assert response.status_code == 200

    def test_featured_pet_shows(self, client):
        response = client.get("/")
        assert b"gallery-card" in response.data

class TestAddPet:
    def test_add_pet(self, client):
        data = ANIMAL_DATA
        data["url"] = TEST_IMAGE_URL
        response = client.post("/add_pet", data=ANIMAL_DATA, follow_redirects=True)
        assert response.status_code == 201
        pet = Animal.get_or_none(Animal.name == "Mr. Test")
        assert pet is not None