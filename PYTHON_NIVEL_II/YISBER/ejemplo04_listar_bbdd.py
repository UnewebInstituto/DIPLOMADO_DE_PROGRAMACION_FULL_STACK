#declaracion de dependencia
import mysql.connector
#conexion a la bd
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="")
#creacion del objeto cursor
mycursor = mydb.cursor()
print("listado de bases de datos del curso Python nivel 2")
mycursor.execute("SHOW DATABASES LIKE '%bdpy2%'")
for bbdd_curso in mycursor:
    print(bbdd_curso)

print("listado de bases de datos en el servidor")
mycursor.execute("SHOW DATABASES")
for bbdd_servidor in mycursor:
    print(bbdd_servidor)
 