import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = "",
  database = "bdpy2_alejandro"
)

mycursor = mydb.cursor()
mycursor.execute("SHOW CREATE DATABASE bdpy2_alejandro")
for detalle_bbdd in mycursor:
  print(detalle_bbdd)