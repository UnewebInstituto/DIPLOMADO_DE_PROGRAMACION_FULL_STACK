import mysql.connector
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="")
print("Ejecución Ejemplo02_conexion_bbdd.py")
print("Servidor de BBDD:",mydb.server_host)
print("Puerto de conexión:",mydb.server_port)
print("Dirección de memoria:",mydb)
print("Tipo de objeto:",type(mydb))

mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE bdpy2_gabriel")