# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_profesor
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_profesor")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Insertar múltiples registros en la tabla Personas")
# Declaración instrucción
sql = "INSERT INTO personas(cedula, nombres, apellidos, direccion, fechanac, telefono) values (%s, %s, %s, %s, %s, %s)"

# Declaración de lista de tuplas con los datos
datos = [('V9012','YOLANDA','TORTOZA','CATIA LA MAR','1975-09-20','04145554433'),
('V5678','LOURDES','GONZALES','LA TRINIDAD','1980-05-21','04146789012'),
('V7890','HERDRINA','MONASTERIOS','YARE','1971-02-16','04148765432')]

# Ejecución del método executemany() sobre el objeto cursor, para ingresar
# múltiples registros
mycursor.executemany(sql, datos)

# Comprometer los cambios
mydb.commit()
    
print("Detalle del total de registros insertados")
print(mycursor.rowcount)
