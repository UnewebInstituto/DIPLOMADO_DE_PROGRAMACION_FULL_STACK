import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = "",
  database = "bdpy2_alejandro"
)

# drop table o database "nombre"

mycursor = mydb.cursor()

sql = "DELETE FROM personas WHERE id=%s"

dato_condicion = (3,)

mycursor.execute(sql, dato_condicion)

# commit cuando hay un cambio
mydb.commit()

print("Numeros de registros afectados:", mycursor.rowcount)

mycursor.execute("SELECT cedula, nombres, apellidos FROM personas")

myresult = mycursor.fetchall()

print("CONTENIDO DESPUES DE BORRAR EL REGISTRO")
for detalle in myresult:
    print(detalle)