import pytest

from .shared import ANIMAL_DATA, TEST_USER_ID, TEST_NON_PRIMARY_IMAGE_URL, TEST_IMAGE_URL
from web.models import Animal, User, Image


class TestAnimal():

    def test_has_fields(self):
        pet = Animal(**ANIMAL_DATA)
        # Cannot test for foreign keys without saving the parent to the database
        assert pet.name == ANIMAL_DATA["name"]
        assert pet.species == ANIMAL_DATA["species"]
        assert pet.breed == ANIMAL_DATA["breed"]
        assert pet.gender == ANIMAL_DATA["gender"]
        assert pet.age == ANIMAL_DATA["age"]
        assert pet.size == ANIMAL_DATA["size"]
        assert pet.color == ANIMAL_DATA["color"]
        assert pet.house_trained == ANIMAL_DATA["house_trained"]
        assert pet.description == ANIMAL_DATA["description"]

    def test_to_dict(self):
        pet = Animal(**ANIMAL_DATA)
        for key, val in pet.to_dict().items():
            if key in ["id", "owner"]:
                continue
            assert val == ANIMAL_DATA[key]
