#declaracion de dependecia
import mysql.connector
#conexion a la base de datos

mydb = mysql.connector.connect(host="localhost",user="root",passwd="",database=" bdpy2_Andy")

#creacion del objeto cursor 
mycursor = mydb.cursor()

#el simbolo \ representa continuacion de linea
print("Modificacion de la tabla personas ")

mycursor.execute("ALTER TABLE personas ADD column telefono varchar(15)")
    
print("Detalle de la tabla personas modificada")
mycursor.execute("DESCRIBE personas")
for tabla_detalle in mycursor:
    print(tabla_detalle)
