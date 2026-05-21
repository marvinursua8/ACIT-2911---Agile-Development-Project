from flask import render_template
from web import db
from web.errors import app
from werkzeug.exceptions import HTTPException

@app.app_errorhandler(404)
def not_found_error(error):
    return render_template('errors/404.html'), 404

@app.app_errorhandler(Exception)
def generic_error(error):
    # Standard non-404 HTTP error
    if isinstance(error, HTTPException):
        code = error.code
        name = error.name
    else: # Python programming bug
        code = 500
        name = "Internal Server Error"
    return render_template('errors/generic.html', code=code, name=name), code