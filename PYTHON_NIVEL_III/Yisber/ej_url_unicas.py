from flask import Flask
from flask import request
from markupsafe import escape

app = Flask(__name__)

@app.route("/")
def index():
    return "<h1>Llamado a la página principal</h1><br><h3>Ejecute la ruta http://127.0.0.1:5000/projects/<br>http://127.0.0.1:5000/about</h3>"

@app.route("/projects/")
def projects():
    return f"<h1>Estás en la ruta de /projects/</h1>"

@app.route("/about")
def about():
    return f"<h1>Estás en la ruta de /about</h1>"
