from flask import Flask
from flask import request
from markupsafe import escape

app = Flask(__name__)

@app.route("/")
def index():
  return "<h1>Llamado a la página principal</h1><br><h3>Ejecute la ruta http://127.0.0.1:5002/saludo</h3>"

@app.route("/saludo")
def saludo():
  curso = request.args.get("curso", "Python nivel III")
  return f"<h1>Llamado a la página del saludo desde el curso de {escape(curso)}</h1>"