from flask import current_app, render_template, Blueprint, jsonify

from .. models import User

app1 = Blueprint("home", __name__)


@app1.route('/')
def index():
    return render_template('index.html') # test render.


@app1.route('/adopt')
def adopt():
    return render_template('adopt.html')


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