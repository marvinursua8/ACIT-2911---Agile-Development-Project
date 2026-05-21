from flask import Blueprint

app = Blueprint('errors', __name__)

from web.errors import handlers