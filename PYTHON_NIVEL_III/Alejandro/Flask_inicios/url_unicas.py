from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
  return "<h1>Llamado a la página principal</h1><br><h3>Ejecute las rutas http://127.0.0.1:5002/projects/</h3><h3>Ejecute las rutas http://127.0.0.1:5002/about</h3>"

@app.route("/projects/")
def projects():
  return f"<h1>Estas en la ruta de projects</h1>"

@app.route("/about")
def about():
  return f"<h1>Estas en la ruta de about</h1>"