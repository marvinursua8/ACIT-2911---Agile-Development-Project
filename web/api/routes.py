from flask import current_app, render_template, Blueprint


app1 = Blueprint("home", __name__)


@app1.route('/')
def index():
    return render_template('index.html') # test render.
