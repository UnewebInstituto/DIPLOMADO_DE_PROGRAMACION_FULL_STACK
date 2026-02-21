from flask import Flask, request
from markupsafe import escape
import math

app = Flask(__name__)

@app.route('/')
def index():
    return 'index<br>Usar la ruta como se indican a contiuación:<br>http://127.0.0.1:5002/resolvente?a=VALOR&b=VALOR&c=VALOR'

@app.route('/resolvente')
def cuadratica():
    a = eval(request.args.get('a'))
    b = eval(request.args.get('b'))
    c = eval(request.args.get('c'))
    if a == 0:
        return 'ERROR: El valor de \'a\' debe ser diferente de 0'
    else:
        subr = math.pow(b,2)-4*a*c
        if subr < 0:
            return 'ERROR: El resultado de la expresión sub radical no puede ser negativo'
        else:
            x1 = (-b+math.sqrt(subr))/(2*a)
            x2 = (-b-math.sqrt(subr))/(2*a)
            return f'x1={escape(x1)}<br>x2={escape(x2)}'