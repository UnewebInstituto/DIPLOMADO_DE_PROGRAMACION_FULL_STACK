# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_profesor
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_jesus")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Modificación de la tabla Personas")

# Ejecución del método execute() sobre el objeto cursor
# el simbolo \ representa continuación de línea
mycursor.execute("ALTER TABLE personas ADD column telefono varchar(15)")
    
print("Detalle de la tabla personas modificada")
mycursor.execute("DESCRIBE personas")
for tabla_detalle in mycursor:
    print(tabla_detalle)
