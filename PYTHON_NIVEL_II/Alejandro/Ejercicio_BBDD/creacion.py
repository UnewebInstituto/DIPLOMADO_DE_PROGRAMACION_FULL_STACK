import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
    host = "localhost",
    user = "root",
    password = "",
)

mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS bdpy2_alejandro")