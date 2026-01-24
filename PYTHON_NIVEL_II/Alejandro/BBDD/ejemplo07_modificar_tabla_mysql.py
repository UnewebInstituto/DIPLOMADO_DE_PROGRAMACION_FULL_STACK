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
mycursor.execute("ALTER TABLE personas ADD column telefono varchar(15)")

print("Detalles de la tabla personas")
mycursor.execute("DESCRIBE personas")
for tabla_detalle in mycursor:
  print(tabla_detalle)