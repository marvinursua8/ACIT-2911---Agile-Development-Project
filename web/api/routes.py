from flask import current_app, render_template, Blueprint, jsonify, request, redirect, url_for, flash


from peewee import JOIN, fn

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
        .order_by(fn.Random())
        .limit(1)
        .dicts()
    )
    
    featured_animal_list = []

    for animal in animals:
        featured_animal_list.append(animal)

    return render_template('index.html', animals=featured_animal_list), 200

@app1.route('/adopt')
def adopt():
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
        .dicts()
    )

    return render_template('adopt.html', animals=animals)

@app1.route('/gallery')
def gallery():
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

    return render_template('gallery.html', animals=featured_animal_list), 200


@app1.route('/add_pet', methods=['GET', 'POST'])
def add_pet():
    if request.method == 'POST':
        default_user = User.get_or_none()  # This will fail if no users exist; replace with proper user selection
        if not default_user:
            flash("No users available to assign as owner.")
            return redirect('add_pet')
        
        try:
            int(request.form.get("age"))
        except ValueError:
            flash("Age must be a number")
            return redirect('add_pet')

        pet = Animal(
            owner=default_user,
            name=request.form.get("name"),
            species=request.form.get("species"),
            breed=request.form.get("breed"),
            gender=request.form.get("gender"),
            age=int(request.form.get("age")),
            size=request.form.get("size"),
            color=request.form.get("color"),
            house_trained=request.form.get("house trained"),
            description=request.form.get("description")
        )
        pet.save()
        flash(f"Pet successfully added")
        return redirect('add_pet')
    else:
        return render_template('add_pet.html'), 200

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
