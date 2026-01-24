import mysql.connector
mydb = mysql.connector.connect(host="localhost",user="root",passwd="")

print("servidor de BBDD:",mydb.server_port)
print("puerto de conexion:",mydb.server_host)
print("direccion de memoria:",mydb)
print("tipos dr objeto",type(mydb))
