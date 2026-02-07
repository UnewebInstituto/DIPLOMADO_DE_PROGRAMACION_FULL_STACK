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
sql = "DELETE FROM personas WHERE id = %s"

# Dato para la condición
dato_condicion = (3,)

mycursor.execute(sql, dato_condicion)

# Debe efectuarse un commit(), dado que se altera el contenido de la BBDD
mydb.commit()

# Consultar cantidad de registros afectados
print("Número de registros afectados:", mycursor.rowcount)

# Consulta del contenido de la tabla posterior a la ejecución
mycursor.execute("SELECT cedula, nombres, apellidos FROM personas")

# Obtener resultado del comando
myresult = mycursor.fetchall()

print("Contenido de la tabla después de borrar el registro")
# Recorrer y mostrar el detalle del resultado
for detalle in myresult:
    print(detalle)