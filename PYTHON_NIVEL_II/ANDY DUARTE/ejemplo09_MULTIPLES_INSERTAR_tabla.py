# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_profesor
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_Andy")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Insertar multiples registro en la tabla Personas")
# Declaración instrucción
sql = "INSERT INTO personas(cedula, nombres, apellidos, direccion, fechanac, telefono) values (%s, %s, %s, %s, %s, %s)"

# Declaración de Lista de tupla con los datos
datos = [('V56898','saul','CONTRE','LA ViA','1969-09-16','04143856789'),
        ('V56478','liLY','COrtes','LA VEGA','1965-07-19','04143458909'),
        ('V5986','sara','ordaz','guatire','1969-04-16','0414340009')]

# Ejecución del método execute() sobre el objeto cursor
mycursor.executemany(sql, datos)

# Comprometer el cambio
mydb.commit()
    
print("Detalle de todos los registro insertado")
print(mycursor.rowcount)
