from flask import Flask
from flask import request
from markupsafe import escape

app = Flask(__name__)

@app.route('/')
def index():
  return 'index<br>Usar la ruta como se indican a contiuación:<br>http://127.0.0.1:5002/echo?dato1=A&dato2=B'

@app.route('/echo')
def echo():
  to_dato1 = request.args.get('dato1')
  to_dato2 = request.args.get('dato2')
  return f"Los datos recibidos en la url son: dato1: {escape(to_dato1)}, dato2: {escape(to_dato2)}"