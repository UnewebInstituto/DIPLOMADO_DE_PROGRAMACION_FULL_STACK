# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Listado de Bases de datos del curso Python nivel 2")

# Ejecución del método execute() sobre el objeto cursor
mycursor.execute("SHOW DATABASES LIKE '%bdpy2%'")
for bbdd_curso in mycursor:
    print(bbdd_curso)

print("Listado de Bases de datos en el servidor")

# Ejecución del método execute() sobre el objeto cursor
mycursor.execute("SHOW DATABASES")
for bbdd_servidor in mycursor:
    print(bbdd_servidor)
