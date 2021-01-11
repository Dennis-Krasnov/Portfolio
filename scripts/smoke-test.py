import os
import requests
import sys

port = os.environ.get("PORT")
res = requests.get(f"http://localhost:{port}")

if res.status_code != 200:
  sys.exit("Status code wasn't 200")