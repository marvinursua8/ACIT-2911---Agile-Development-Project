import pytest

from .shared import ANIMAL_DATA
from web.models import Animal, User


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

    def test_requires_fields(self):
        def keyless(dict, removed_key):
            return {key:val for key, val in dict if key != removed_key}

        with pytest.raises(ValueError):
            Animal(**keyless(ANIMAL_DATA, "name"))