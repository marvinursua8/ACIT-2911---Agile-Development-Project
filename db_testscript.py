from web import create_app, User, db



def setup_database():
    app = create_app()

    with app.app_context():
        db.connect(reuse_if_open=True)

        db.drop_tables([User], safe=True)
        db.create_tables([User])

        User.create(first_name="Marvin", last_name="Ursua", email="marvinlu19@gmail.com", phone_number="6043415550")

        User.create(first_name="Carlos", last_name="Waung", email="@gmail.com", phone_number="6043415550")


        db.close()

if __name__ == "__main__":
    setup_database()