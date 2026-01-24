# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_profesor")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Detalle de creación Bases de datos")

# Ejecución del método execute() sobre el objeto cursor
mycursor.execute("SHOW CREATE DATABASE bdpy2_profesor")
for bbdd_detalle in mycursor:
    print(bbdd_detalle)
# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_profesor")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Detalle de creación Bases de datos")

# Ejecución del método execute() sobre el objeto cursor
mycursor.execute("SHOW CREATE DATABASE bdpy2_profesor")
for bbdd_detalle in mycursor:
    print(bbdd_detalle)
