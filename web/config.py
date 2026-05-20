from pathlib import Path
import os

DATABASE_PATH = str(Path(__file__).resolve().parent.parent / "instance" / "shelter.db")


class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'you-will-never-guess'
    SEND_FILE_MAX_AGE_DEFAULT = 10800 # 3 hours
