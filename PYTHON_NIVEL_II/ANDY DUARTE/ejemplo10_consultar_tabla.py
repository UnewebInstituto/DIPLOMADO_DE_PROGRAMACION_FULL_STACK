# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_profesor
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_Andy")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Detalle de la tabla Personas")
# Declaración instrucción
sql = "SELECT * FROM personas"

# Ejecución del método execute()
mycursor.execute(sql)

myresult = mycursor.fetchall()

# Mostrar detalle de la consulta a la tabla personas
for detalle in mycursor:
    print(detalle)