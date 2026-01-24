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
sql = "SELECT cedula, nombres, apellidos FROM personas WHERE direccion = %s"

dato_condicion = ('LA VEGA',)

# Ejecución del método execute()
mycursor.execute(sql, dato_condicion)

# Extraer el resultado de la consulta en una variable
myresult = mycursor.fetchall()

# Recorrer y mostrar el detalle del resultado
for detalle in myresult:
    print(detalle)