from flask import current_app, render_template, Blueprint


app1 = Blueprint("home", __name__)


@app1.route('/')
def index():
    return render_template('index.html') # test render.


@app1.route('/adopt')
def adopt():
    return "Adopt page"


@app1.route('/add_pet')
def add_pet():
    return "add new animal here"