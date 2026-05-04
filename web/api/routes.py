from flask import current_app, render_template, Blueprint, jsonify

from peewee import JOIN

from .. models import User, Animal, Image

app1 = Blueprint("home", __name__)


@app1.route('/')
def index():
    animals = (
        Animal
        .select(
            Animal.id,
            Animal.name,
            Animal.breed,
            Animal.gender,
            Image.url.alias("primary_image")
        )
        .join(
            Image,
            JOIN.LEFT_OUTER,
            on=(
                (Image.animal == Animal.id) &
                (Image.is_primary == True)
            )
        )
        .order_by(Animal.id.desc())
        .limit(3)
        .dicts()
    )
    
    featured_animal_list = []

    for animal in animals:
        featured_animal_list.append(animal)

    return render_template('index.html', animals=featured_animal_list), 200 # test render.

@app1.route('/adopt')
def adopt():
    return render_template('adopt.html')

@app1.route('/gallery')
def gallery():
    # Use dummy data to test your CSS layout 4-wide and expansion
    all_pets = [
        {'name': 'Rex', 'image_path': 'dog.jpg', 'description': 'A good boy.', 'age': '2', 'breed': 'Husky'},
        {'name': 'Luna', 'image_path': 'cat.jpg', 'description': 'Very sleepy.', 'age': '4', 'breed': 'Tabby'},
        {'name': 'Buddy', 'image_path': 'dog2.jpg', 'description': 'Loves fetch.', 'age': '1', 'breed': 'Lab'},
        {'name': 'Mochi', 'image_path': 'cat2.jpg', 'description': 'Chaos incarnate.', 'age': '3', 'breed': 'Calico'}
    ]
    return render_template('gallery.html', all_pets=all_pets)
@app1.route('/add_pet')
def add_pet():
    return "add new animal here"

@app1.route('/user_info')
def view_users():
    users_to_view = User.select()
    user_list = []

    for user in users_to_view:
        user_list.append(user.to_dict())

    return jsonify(user_list), 200

@app1.route('/pet_info')
def view_pets():
    animals_to_view = Animal.select()
    animal_list = []

    for animal in animals_to_view:
        animal_list.append(animal.to_dict())

        return jsonify(animal_list), 200