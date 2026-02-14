from flask import Flask, request
from markupsafe import escape
import math

app = Flask(__name__)

@app.route('/')
def index():
    return 'index<br>Usar la ruta como se indican a contiuación:<br>http://127.0.0.1:5000/fibonacci?n1=VALOR&n2=VALOR&n=VALOR'

@app.route('/fibonacci')
def fibonacci():
    n1 = eval(request.args.get('n1'))
    n2 = eval(request.args.get('n2'))
    n = eval(request.args.get('n'))
    i = 2
    suma = 0
    salida = str(n1)+",<br>"+str(n2)+",<br>"
    while i < n:
        suma = n1 + n2
        salida = salida + str(suma)+",<br>"
        n1 = n2
        n2 = suma
        i = i + 1
        return salida