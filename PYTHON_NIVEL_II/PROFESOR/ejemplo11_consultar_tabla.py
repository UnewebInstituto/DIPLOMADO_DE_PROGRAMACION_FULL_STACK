# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_profesor
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_profesor")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Detalle de la tabla Personas")
# Declaración instrucción
sql = "SELECT cedula, nombres, apellidos FROM personas"

# Ejecución del método execute()
mycursor.execute(sql)

# Extraer el resultado de la consulta en una variable
myresult = mycursor.fetchall()
print(myresult)

# Recorrer y mostrar el detalle del resultado
for detalle in myresult:
    print(detalle)