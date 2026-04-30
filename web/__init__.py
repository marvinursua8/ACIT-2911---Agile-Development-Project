from flask import Flask

def create_app():

    app = Flask(__name__)

    from .api.routes import app1

    app.register_blueprint(app1)
    print(app.url_map)

    return app


