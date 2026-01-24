import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = "",
  database = "bdpy2_alejandro"
)

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Detalle de la tabla Personas")
# Declaración instrucción
sql = "SELECT * FROM personas"
# sql = "SELECT cedula, nombres, apellidos FROM personas"

# Ejecución del método execute()
mycursor.execute(sql)

# Extraer el resultado de la consulta en una variable
myresult = mycursor.fetchall()

# Recorrer y mostrar el detalle del resultado
for detalle in myresult:
    print(detalle)