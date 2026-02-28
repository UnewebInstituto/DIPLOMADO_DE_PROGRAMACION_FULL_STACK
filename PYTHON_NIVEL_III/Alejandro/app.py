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

@app.route('/Ingresar')
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
      resultado = "Registro almacendo con exito"
      severidad = 1
    except Error as e:
      if mydb.is_connected():
        mydb.rollback()
      if e.errno == 1062:
        resultado = f"Error la cedula {cedula} o correo eléctronico {correo} ya se encuentra(n) regitrado(s)"
        severidad = 2
      elif e.errno == 1045:
        resultado = "Error de acceso: Usuario o contraseña de base de datos incorrectos"
        severidad = 3
      else:
        resultado = f"Error de base de datos inesperado: {e}"
        severidad = 4 
    finally:
      if mydb.is_connected():
        mydb.close()
    return render_template('ingresar.html', mensaje = [resultado, severidad])
  
@app.route('/Consultar')
def consultar():
  return render_template('consultar.html')

@app.route('/consultar01', methods=['GET','POST'])
def consultar01():
  if request.method == 'POST':
    cedula = request.form['tipo'] + request.form['numero']
    sql = 'SELECT * FROM personas WHERE cedula = %s'
    valores = (cedula,)
    conexion()
    mycursor = mydb.cursor()
    try:
      mycursor.execute(sql, valores)
      datos = mycursor.fetchone()
      if datos:
        resultado = f'Consulta para la cédula {cedula} efectuada con éxito'
        severidad = 1
      else:
        resultado = f'No se encontraron datos asociados a la cédula {cedula}'
        severidad = 2
    except Error as e:
        resultado = f"Error de base de datos inesperado: {e}"
        severidad = 4 
    finally:
      if mydb.is_connected():
        mydb.close()
    return render_template('consultar02.html', mensaje = {'resultado':resultado, 'severidad':severidad,'datos':datos})

@app.route('/Reporte')
def reporte():
    sql = "SELECT * FROM personas"
    conexion()
    mycursor = mydb.cursor()
    try:
        mycursor.execute(sql)
        datos = mycursor.fetchall()
        if len(datos):
            resultado = f"Reporte generado con éxito."
            severidad = 1
        else:
            resultado  = f"No se encontraron datos de personas."
            severidad = 2
    except Error as e:
        resultado = f"ERROR de Bases de Datos inesperado {e}"
        severidad = 4
    finally:
        if mydb.is_connected():
            mydb.close()
    return render_template('reporte.html', mensaje={'resultado':resultado, 'severidad':severidad, 'datos':datos})
  
@app.route('/Eliminar')
def eliminar():
    sql = "SELECT * FROM personas"
    conexion()
    mycursor = mydb.cursor()
    try:
        mycursor.execute(sql)
        datos = mycursor.fetchall()
        if len(datos):
            resultado = f"Reporte generado con éxito."
            severidad = 1
        else:
            resultado  = f"No se encontraron datos de personas."
            severidad = 2
    except Error as e:
        resultado = f"ERROR de Bases de Datos inesperado {e}"
        severidad = 4
    finally:
        if mydb.is_connected():
            mydb.close()
    return render_template('eliminar.html', mensaje={'resultado':resultado, 'severidad':severidad, 'datos':datos})