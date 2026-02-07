import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="bdpy2_profesor" # Cambiado a 'py2' según tu descripción
)