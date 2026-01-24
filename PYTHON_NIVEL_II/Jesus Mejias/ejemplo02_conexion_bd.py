import mysql.connector
mydb = mysql.connector.Connect(host="localhost",
                               user="root",
                               passwd="")
#mycursor = mydb.cursor()
#mycursor.execute("CREATE DATABASE bdpy2_jesus")

print("Servidor de BD: ", mydb.server_host)
print("Puerto de conexion: ", mydb.server_port)
print("Direccion de memoria: ",mydb)
print("Tipo de objeto: ",type(mydb))


