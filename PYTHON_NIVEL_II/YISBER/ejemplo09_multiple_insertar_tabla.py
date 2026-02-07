# Declaración de dependencia
import mysql.connector
# Conexión a la Base de Datos bdpy2_yisber
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="",
                               database="bdpy2_yisber")

# Creación del objeto cursor
mycursor = mydb.cursor()

print("Insertar múltiples registros en la tabla Personas")
# Declaración instrucción
sql = "INSERT INTO personas(cedula, nombres, apellidos, direccion, fechanac, telefono) values (%s, %s, %s, %s, %s, %s)"

# Declaración de lista de tuplas con los datos
datos = [('V9012','yolanda','tortoza','catia la mar','1987-07-16','04143456720'),
('V4588','luz','Gonzalez','partiata','1988-12-21','04143456760'),
('V20565987','angel','quintana','macuto','1968-07-16','04143456757')
]

# Ejecución del método executemany() para asignar o ingresar multiples registro
mycursor.executemany(sql, datos)

# Comprometer el cambio
mydb.commit()
    
print("Detalle de los registros insertado")
print(mycursor.rowcount)
