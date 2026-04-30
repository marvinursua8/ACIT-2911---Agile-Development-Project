from flask import Flask
from pathlib import Path
from .database import db
from .models import User
from . import config

def create_app():

    app = Flask(__name__)

    from .api.routes import app1

    db_path = Path(config.DATABASE_PATH)
    db_path.parent.mkdir(exist_ok=True)

    db.init(str(db_path))

    @app.before_request
    def before_request():
        db.connect(reuse_if_open=True)

    @app.teardown_appcontext
    def teardown(exc):
        if not db.is_closed():
            db.close()


    app.register_blueprint(app1)
    # print(app.url_map)

    with db:
        db.create_tables([User], safe=True)

    return app


