import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = ""
)

# creación del objeto cursor 
mycursor = mydb.cursor()
print('Bases de datos del curso Python nivel 2')

# Ejecución del método execute() sobre el objeto cursor
mycursor.execute("SHOW DATABASES LIKE '%bdpy2%'")
for bbdd_curso in mycursor:
  print(bbdd_curso)

print("Listado de la Bases de datos en el servidor")
mycursor.execute("SHOW DATABASES")
for bbdd_servidor in mycursor:
  print(bbdd_servidor)