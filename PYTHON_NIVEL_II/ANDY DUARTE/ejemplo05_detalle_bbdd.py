#declaracion de dependecia
import mysql.connector
#conexion a la base de datos

mydb = mysql.connector.connect(host="localhost",user="root",passwd="",database=" bdpy2_Andy")

#creacion del objeto cursor 
mycursor = mydb.cursor()

print("DETALLE DE CREACION BASE DE DATOS")
mycursor.execute("SHOW CREATE DATABASE bdpy2_Andy")
for detalle_bbdd in mycursor:
    print(detalle_bbdd)
