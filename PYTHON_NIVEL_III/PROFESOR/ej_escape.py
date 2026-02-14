from flask import Flask
from flask import request
from markupsafe import escape

app = Flask(__name__)

@app.route("/")
def raiz():
    return "Este es el ejemplo escape, debe indicar la ruta<br>http://127.0.0.1:5000/hello"

@app.route("/hello")
def hello():
    name = request.args.get("name","Flask")
    return f"Hola, {escape(name)}!"
    

