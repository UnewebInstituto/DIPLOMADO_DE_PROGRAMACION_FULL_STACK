import mysql.connector

# Conexión a la base de datos
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = "",
  database = "bdpy2_alejandro"
)

mycursor = mydb.cursor()

sql = "INSERT INTO personas (cedula, nombres, apellidos, direccion, fechanac, telefono) VALUES (%s,%s,%s,%s,%s,%s)"
valores = ("V5678","ALE","VILLA","CHACAO","2003/12/29","+58 04143562275")
mycursor.execute(sql,valores)

mydb.commit()
print("1 registro insertado, ID:", mycursor.lastrowid)