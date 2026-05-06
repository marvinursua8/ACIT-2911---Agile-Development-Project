import pytest
from .shared import client, ANIMAL_DATA

class TestIndex:
    def test_returns_200(self, client):
        response = client.get("/")
        assert response.status_code == 200

    def test_featured_pet_shows(self, client):
        response = client.get("/")
        assert b"gallery-card" in response.data