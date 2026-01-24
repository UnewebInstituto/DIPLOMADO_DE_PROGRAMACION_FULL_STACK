import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = "",
  database = "bdpy2_alejandro"
)

mycursor = mydb.cursor()
# \ - Continuidad
mycursor.execute("CREATE TABLE personas (id int auto_increment primary key,\
  cedula varchar(10),\
  nombres varchar(30),\
  apellidos varchar(30),\
  direccion text,\
  fechanac date)")

print("Detalles de la tabla personas")
mycursor.execute("SHOW CREATE TABLE personas")
for tabla_detalle in mycursor:
  print(tabla_detalle)