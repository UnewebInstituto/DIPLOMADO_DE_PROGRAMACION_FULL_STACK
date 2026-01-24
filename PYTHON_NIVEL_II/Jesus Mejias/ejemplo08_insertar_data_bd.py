# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_profesor
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_profesor")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Insertar registro en la tabla Personas")
# Declaración instrucción
sql = "INSERT INTO personas(cedula, nombres, apellidos, direccion, fechanac, telefono) values (%s, %s, %s, %s, %s, %s)"

# Declaración de tupla con los datos
datos = ('V5678','NELLY','CONTRERAS','LA VEGA','1968-07-16','04143456789')

# Ejecución del método execute() sobre el objeto cursor
mycursor.execute(sql, datos)

# Comprometer el cambio
mydb.commit()
    
print("Detalle del registro insertado")
print(mycursor.lastrowid)
