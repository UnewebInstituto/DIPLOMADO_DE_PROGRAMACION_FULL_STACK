from flask import Flask, render_template, request, redirect, url_for
import mysql.connector
from mysql.connector import Error

app = Flask(__name__)

def conexion():
  global mydb 
  mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="bdpy2_alejandro" 
  )

@app.route('/')
def index():
  return render_template('index.html')

@app.route('/ingresar')
def ingresar():
  return render_template('ingresar.html')

@app.route('/ingresar01', methods=['GET','POST'])
def ingresar01():
  if request.method == 'POST':
    cedula = request.form['tipo'] + request.form['numero']
    nombres = request.form['nombres']
    apellidos = request.form['apellidos']
    sexo = request.form['sexo']
    correo = request.form['correo']
    fechanac = request.form['fechanac']
    telefono = request.form['telefono']
    direccion = request.form['direccion']

    conexion()
    sql = "INSERT INTO personas (cedula, nombres, apellidos, sexo, direccion, fechanac, telefono, correo_electronico) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
    valores = (cedula, nombres, apellidos, sexo, direccion, fechanac, telefono, correo)
    mycursor = mydb.cursor()
    try:
      mycursor.execute(sql, valores)
      mydb.commit()
      resultado = []
      resultado.append("Registro almacendo con exito")
    except Error as e:
      if mydb.is_connected():
        mydb.rollback()
      if e.errno == 1062:
        resultado = f"Error la cedula {cedula} o correo eléctronico {correo} ya se encuentra(n) regitrado(s)"
      elif e.errno == 1045:
        resultado = "Error de acceso: Usuario o contraseña de base de datos incorrectos"
      else:
        resultado = f"Error de base de datos inesperado: {e}" 
    finally:
      if mydb.is_connected():
        mydb.close()
    return render_template('ingresar.html', mensaje=resultado)