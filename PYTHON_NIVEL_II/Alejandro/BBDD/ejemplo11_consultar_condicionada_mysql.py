import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = "",
  database = "bdpy2_alejandro"
)

mycursor = mydb.cursor()

print("Detalle de la tabla Personas")
sql = "SELECT cedula, nombres, apellidos FROM personas WHERE direccion=%s"

dato_condicion = ('CHACAO',)

mycursor.execute(sql, dato_condicion)

myresult = mycursor.fetchall()

for detalle in myresult:
    print(detalle)