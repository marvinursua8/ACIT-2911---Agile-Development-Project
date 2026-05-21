from flask import Flask
from flask_login import LoginManager, login_user, logout_user, login_required
from playhouse.db_url import connect 
from .database import db
from .models import User, Animal, Image, Admin
from .config import Config, DATABASE_PATH

DATABASE_URL="postgresql://postgres.xrygojfhrciovwsakyxk:apples7894561230qweA!@aws-1-us-east-1.pooler.supabase.com:6543/postgres"

def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)
    from .api.routes import app1
    from .errors import app as errors_bp
    login = LoginManager(app)
    login.login_view = 'home.login'

    @login.user_loader
    def load_user(admin_id):
        return Admin.get_or_none(Admin.id == int(admin_id))

    supabase_db = connect(DATABASE_URL)
    db.initialize(supabase_db)
    # ---------------------------------

    @app.before_request
    def before_request():
        db.connect(reuse_if_open=True)

    @app.teardown_appcontext
    def teardown(exc):
        if not db.is_closed():
            db.close()

    app.register_blueprint(app1)
    app.register_blueprint(errors_bp)

    with db:
        db.create_tables([User, Animal, Image, Admin], safe=True)

    return app