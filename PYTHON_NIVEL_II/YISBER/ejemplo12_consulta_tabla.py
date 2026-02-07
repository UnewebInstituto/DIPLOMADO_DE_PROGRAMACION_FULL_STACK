# Declaración de dependencia
import mysql.connector

mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_yisber")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Detalle de la tabla Personas")
# Declaración instrucción
sql = "SELECT cedula, nombres, apellidos FROM personas WHERE direccion = %s"

# Dato para la condición
dato_condicion = ('CATIA LA MAR',)

# Ejecución del método execute()
mycursor.execute(sql, dato_condicion)

# Extraer el resultado de la consulta en una variable
myresult = mycursor.fetchall()

# Recorrer y mostrar el detalle del resultado
for detalle in myresult:
    print(detalle)