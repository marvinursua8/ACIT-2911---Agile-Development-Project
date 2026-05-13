from web import create_app

app = create_app() # this is how flask knows this is a flask program.



if __name__ == "__main__":
    # app.run(host="localhost", port=5000, debug=True)
    app.run(host="127.0.0.1", port=5000, debug=True)