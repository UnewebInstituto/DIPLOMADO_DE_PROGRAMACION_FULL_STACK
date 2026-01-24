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
valores = [
  ("V9123","JESUS","TORRES","ALTAMIRA","2008/02/20","+58 04143562295"),
  ("V4567","ANDY","HERNANDEZ","MERCEDES","2005/04/15","+58 02122854471"),
  ("V8912","YISBER","CASTILLO","MIRANDA","1999/11/03","+58 04242101284")
]
mycursor.executemany(sql,valores)

mydb.commit()
print("Registros insertados:", mycursor.rowcount)