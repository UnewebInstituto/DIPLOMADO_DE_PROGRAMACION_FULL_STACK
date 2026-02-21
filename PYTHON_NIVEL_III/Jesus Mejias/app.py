from flask import Flask
from flask import render_template
from flask import request
from flask import redirect
from flask import url_for
from markupsafe import escape
import mysql.connector

app = Flask(__name__)

def conexion():
    global mydb
    mydb= mysql.connector.connect(host="localhost",user="root", passwd="", database="bdpy2_jesus"
)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/ingresar')
def ingresar():
    return render_template('ingresar.html')

@app.route('/ingresar01', methods=['GET', 'POST'])
def ingresar01():
    if request.method == "POST":
        cedula = request.form['tipo'] + request.form['numero']
        nombres = request.form['nombres']
        apellidos = request.form['apellidos']
        sexo = request.form['sexo']
        correo_electronico = request.form['correo_electronico']
        fechanac = request.form['fechanac']
        telefono = request.form['telefono']
        direccion = request.form['direccion']
        conexion()
        sql = "INSERT INTO personas(cedula, nombres, apellidos, sexo, direccion, fechanac, telefono, correo_electronico) VALUES (%s, %s, %s, %s, %s, %s, %s,%s)"
        valores = (cedula, nombres, apellidos, sexo, direccion, fechanac, telefono, correo_electronico)
        mycursor = mydb.cursor()
        mycursor.execute(sql, valores)
        mydb.commit()
        resultado = 'Registro almacenado con éxito'
        return render_template('ingresar.html', mensaje=resultado)
