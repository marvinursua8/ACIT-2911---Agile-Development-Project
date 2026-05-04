from flask import current_app, render_template, Blueprint, jsonify

from .. models import User, Pet 

app1 = Blueprint("home", __name__)


@app1.route('/')
def index():
    return render_template('index.html') # test render.

@app1.route('/adopt')
def adopt():
    return "Adopt page"

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