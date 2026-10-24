import os
from dotenv import load_dotenv

load_dotenv()

ERASPACE_USER = os.getenv("ERASPACE_USER", "")
ERASPACE_PASSWORD = os.getenv("ERASPACE_PASSWORD", "")