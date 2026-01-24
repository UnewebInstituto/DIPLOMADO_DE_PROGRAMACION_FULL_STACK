import mysql.connector
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="")

mycursor = mydb.cursor()

print("Listado de Bases de datos del curso Python nivel 2")
mycursor.execute("SHOW DATABASES LIKE '%bdpy2%'")
for bbdd_curso in mycursor:
    print(bbdd_curso)

print("Listado de Bases de datos en el servidor")
mycursor.execute("SHOW DATABASES")
for bbdd_servidor in mycursor:
    print(bbdd_servidor)
