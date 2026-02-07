# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_yisber
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_yisber")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Creación de la tabla Personas")

# Ejecución del método execute() sobre el objeto cursor
# el simbolo \ representa continuación de línea
mycursor.execute("CREATE TABLE personas(id INT NOT NULL AUTO_INCREMENT primary key,\
    cedula varchar(10),\
    nombres varchar(30),\
    apellidos varchar(30),\
    direccion text,\
    fechanac date)")

# Mostrar estructura de la tabla recien creada
print("Detalle de la tabla personas")
mycursor.execute("SHOW CREATE TABLE personas")
for tabla_detalle in mycursor:
    print(tabla_detalle)

print("Detalle 2 de la tabla personas")
mycursor.execute("DESCRIBE personas")
for tabla_detalle in mycursor:
    print(tabla_detalle)
