from flask import current_app, render_template, Blueprint, jsonify, flash, url_for, redirect

from peewee import JOIN, fn

from .. models import User, Animal, Image, Admin
from flask_login import current_user, login_user, logout_user
from .. forms import LoginForm
from .. config import Config

app1 = Blueprint("home", __name__)
# app1.config['SECRET_KEY'] = 'some-super-secret-string-here'

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
    return render_template('adopt.html')

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
    


@app1.route('/login', methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('home.admin_dashboard'))
    
    form = LoginForm()
    if form.validate_on_submit():
        admin = Admin.get_or_none(Admin.username == form.username.data)
        
        if admin is None or not admin.check_password(form.password.data):
            flash('Invalid username or password')
            return redirect(url_for('home.login'))
            
        login_user(admin, remember=form.remember_me.data)
        print("authenticated!")
        return redirect(url_for('home.admin_dashboard'))
    
    return render_template('adminlogin.html', title='Sign In', form=form)

@app1.route('/admin_dashboard')
def admin_dashboard():
    return render_template('admin_dashboard.html')

@app1.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('home.index'))