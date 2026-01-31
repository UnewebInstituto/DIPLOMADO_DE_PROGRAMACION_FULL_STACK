import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
    host = "localhost",
    user = "root",
    password = "",
    database = "bdpy2_alejandro"
)

mycursor = mydb.cursor()
mycursor.execute("CREATE TABLE IF NOT EXISTS personas (id int auto_increment primary key,\
    cedula varchar(10),\
    nombres varchar(30),\
    apellidos varchar(30),\
    direccion text,\
    fechanac date,\
    telefono varchar(15))")