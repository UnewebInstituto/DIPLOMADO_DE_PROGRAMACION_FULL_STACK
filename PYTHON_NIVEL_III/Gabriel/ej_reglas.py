from flask import Flask
from flask import request
from markupsafe import escape

app = Flask(__name__)

@app.route("/")
def index():
    return "<h1>Llamado a la página principal</h1><br><h3>Ejecute las rutas http://127.0.0.1:5001/user/administrador<br>http://127.0.0.1:5001/post/7<br>http://127.0.0.1:5001/path/ruta</h3>"

@app.route("/user/<username>")
def show_user_profile(username):
    return f'User: {escape(username)}'

@app.route("/post/<int:post_id>")
def show_post(post_id):
    return f'Post: {post_id}'

@app.route("/path/<path:subpath>")
def show_path(subpath):
    return f'Path: {escape(subpath)}'