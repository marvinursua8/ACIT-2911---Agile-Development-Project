from flask import Flask
# 1. Add the db_url parser
from playhouse.db_url import connect 
from .database import db
from .models import User, Animal, Image
from . import config

# 2. Corrected URL (No brackets, no pgbouncer flag)
DATABASE_URL="postgresql://postgres.xrygojfhrciovwsakyxk:apples7894561230qweA!@aws-1-us-east-1.pooler.supabase.com:6543/postgres"

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = config.SECRET_KEY
    from .api.routes import app1

    # --- DELETE THE OLD SQLITE CODE ---
    # db_path = Path(config.DATABASE_PATH)
    # db_path.parent.mkdir(exist_ok=True)
    # db.init(str(db_path))

    # --- ADD THE NEW SUPABASE CODE ---
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

    with db:
        db.create_tables([User, Animal, Image], safe=True)

    return app