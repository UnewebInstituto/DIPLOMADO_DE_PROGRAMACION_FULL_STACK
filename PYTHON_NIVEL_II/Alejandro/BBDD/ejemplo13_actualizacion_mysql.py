import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = "",
  database = "bdpy2_alejandro"
)

mycursor = mydb.cursor()

sql = "UPDATE personas SET direccion=%s, telefono= %s WHERE id=%s"

dato_condicion = ("CHARALLAVE","+58 04162869624",4,)

mycursor.execute(sql, dato_condicion)

# commit cuando hay un cambio
mydb.commit()

print("Numeros de registros actualizados:", mycursor.rowcount)

mycursor.execute("SELECT id, direccion, telefono FROM personas")

myresult = mycursor.fetchall()

print("CONTENIDO DESPUES DE ACTUALIZAR EL REGISTRO")
for detalle in myresult:
    print(detalle)