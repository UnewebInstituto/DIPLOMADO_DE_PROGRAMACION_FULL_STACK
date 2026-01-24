import mysql.connector
mydb = mysql.connector.connect(host="localhost",user="root",passwd="")

mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE bdpy2_Andy")


#listado de bdd que contenga bdpy2
#mycursor = mydb.cursor()
#mycursor.execute("SHOW DATABASES lIKE '%bdpy2%'")
#for bbdd_curso in mycursor:
    #print(bbdd_curso)