import pytest
from .shared import client, ANIMAL_DATA, TEST_IMAGE_URL, TEST_USER_ID, TEST_NON_PRIMARY_IMAGE_URL
from web.models import Animal, User, Image
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
        # cleanup
        Image.delete().where(Image.animal_id == pet.id).execute()
        Animal.delete().where(Animal.id == pet.id).execute()

class TestPrimaryImage:
        def test_shows_primary_image_on_home_page(self):
            """Each pet can have multiple images. To determine which of its images to show on the home page's Featured Pets section., every image has an is_primary attribute that is either True or False. If an image has is_primary = True, then it will be shown in Featured Pets. """
            try:
                test_animal = Animal.create(
                    owner=TEST_USER_ID,
                    name=ANIMAL_DATA["name"],
                    species=ANIMAL_DATA["species"],
                    breed=ANIMAL_DATA["breed"],
                    gender=ANIMAL_DATA["gender"],
                    age=ANIMAL_DATA["age"],
                    size=ANIMAL_DATA["size"],
                    color=ANIMAL_DATA["color"],
                    house_trained=ANIMAL_DATA["house_trained"],
                    description=ANIMAL_DATA["description"],
                )

                Image.create(
                    animal=test_animal,
                    url=TEST_NON_PRIMARY_IMAGE_URL,
                    is_primary=False
                )
                
                Image.create(
                    animal=test_animal,
                    url=TEST_IMAGE_URL,
                    is_primary=True
                )

                animal_data = (
                    Animal
                    .select(
                        Animal.id,
                        Animal.name,
                        Image.url.alias("primary_image")
                    )
                    .join(
                        Image,
                        on=(
                            (Image.animal == Animal.id) &
                            (Image.is_primary == True)
                        )
                    )
                    .where(Animal.id == test_animal.id)
                    .dicts()
                    .get()
                )

                assert animal_data["primary_image"] == TEST_IMAGE_URL

            finally:
                # Deletes created Image and Animal instances as cleanup
                if test_animal:
                    Image.delete().where(Image.animal == test_animal).execute()
                    test_animal.delete_instance()