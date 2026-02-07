# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_yisber
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_yisber")

# Creación del objeto cursor
mycursor = mydb.cursor()


mycursor = mydb.cursor()
print("Insertar registros en la tabla Personas")
# Declaración instrucción
sql = "INSERT INTO personas(cedula, nombres, apellidos, direccion, fechanac, telefono) values (%s, %s, %s, %s, %s, %s)"
# Declaración de tupla con los datos
datos = ('V18535012','Yiss','Rodriguez','LA VEGA','1987-11-11','04141116692')

# Ejecución del método execute() sobre el objeto cursor
mycursor.execute(sql, datos)

# Comprometer el cambio
mydb.commit()
    
print("Detalle del registro insertado")
print(mycursor.lastrowid)