#declaracion de dependecia
import mysql.connector
#conexion a la base de datos

mydb = mysql.connector.connect(host="localhost",user="root",passwd="",database=" bdpy2_Andy")

#creacion del objeto cursor 
mycursor = mydb.cursor()

#el simbolo \ representa continuacion de linea
print("Creacion de la tabla personas ")
mycursor.execute("CREATE TABLE personas (id int auto_increment primary key,\
    cedula varchar(10),\
    nombres varchar(30),\
    apellidos varchar(30),\
    direccion text,\
    fechanac date)")

#mostrar estructura de la tabla recien creada
print("Detalle 1 de la tabla personas")
mycursor.execute("SHOW create TABLE personas")
for tabla_detalle in mycursor:
    print(tabla_detalle)
    
print("Detalle 2 de la tabla personas")
mycursor.execute("Describe personas")
for tabla_detalle2 in mycursor:
    print(tabla_detalle2)  

