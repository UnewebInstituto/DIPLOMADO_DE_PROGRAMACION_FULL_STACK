#declaracion de dependecia
import mysql.connector
#conexion a la base de datos
mydb = mysql.connector.connect(host="localhost",user="root",passwd="")
#creacion del objeto cursor 
mycursor = mydb.cursor()
#ejecusion 
print("Listado de Bases de datos del curso python nivel 2")
mycursor.execute("SHOW DATABASES lIKE '%bdpy2%'")
for bbdd_curso in mycursor:
    print(bbdd_curso)
    
print("Listado de Bases de datos en el servidor")
mycursor.execute("SHOW DATABASES")
for bbdd_servidor in mycursor:
    print(bbdd_servidor)
