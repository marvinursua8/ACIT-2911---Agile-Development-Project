from pathlib import Path
import os

SECRET_KEY = os.environ.get("SECRET_KEY") or "development-placeholder-key"
DATABASE_PATH = str(Path(__file__).resolve().parent.parent / "instance" / "shelter.db")