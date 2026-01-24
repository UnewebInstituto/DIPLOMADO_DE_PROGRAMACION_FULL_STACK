# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_profesor
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_profesor")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Creación de la tabla Personas")

# Ejecución del método execute() sobre el objeto cursor
# el simbolo \ representa continuación de línea
mycursor.execute("CREATE TABLE personas(id int auto_increment primary key,\
    cedula varchar(10),\
    nombres varchar(30),\
    apellidos varchar(30),\
    direccion text,\
    fechanac date)")

# Mostrar estructura de la tabla recien creada
print("Detalle 1 de la tabla personas")
mycursor.execute("SHOW CREATE TABLE personas")
for tabla_detalle in mycursor:
    print(tabla_detalle)
    
print("Detalle 2 de la tabla personas")
mycursor.execute("DESCRIBE personas")
for tabla_detalle in mycursor:
    print(tabla_detalle)
