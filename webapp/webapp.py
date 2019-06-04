from flask import Flask
import datetime

app = Flask(__name__)


@app.route("/")
def index():
    return "index page"


@app.route("/time")
def time():
    return str(datetime.datetime.now().isoformat())
