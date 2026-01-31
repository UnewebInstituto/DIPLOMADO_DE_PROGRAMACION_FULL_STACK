import conexion

def ingresar():
  print("\n")
  cedula = input("CEDULA:")
  nombres = input("NOMBRE:")
  apellidos = input("APELLIDO:")
  direccion = input("DIRECCION:")
  fechanac = input("FECHA DE NACIMIENTO (aaaa-mm-dd):")
  telefono = input("TELEFONO:")
  sql = "INSERT INTO personas (cedula, nombres, apellidos, direccion, fechanac, telefono) VALUES (%s,%s,%s,%s,%s,%s)"
  datos = [cedula,nombres,apellidos,direccion,fechanac,telefono]
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql,datos)
  conexion.mydb.commit()
  print("Id del registro insertado:", mycursor.lastrowid)
  print("\n")
  
def consultar():
  sql = "SELECT * FROM personas"
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql)
  myresult = mycursor.fetchall()
  print("\n")
  for detalle in myresult:
    print(detalle)
  print("\n")
  
def borrar():
  sql = "DELETE FROM personas WHERE id=%s"
  condicion = (2,)
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql, condicion)
  conexion.mydb.commit()
  print("\n")
  print("Numeros de registros afectados:", mycursor.rowcount)
  print("\n")
  
def actualizar():
  sql = "UPDATE personas SET apellidos=%s WHERE id=%s"
  condicion = ("MARTINEZ", 3,)
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql, condicion)
  conexion.mydb.commit()
  print("\n")
  print("Numeros de registros actualizados:", mycursor.rowcount)
  print("\n")

def reporte():
  print("Detalles de la tabla personas")
  mycursor = conexion.mydb.cursor()
  mycursor.execute("DESCRIBE personas")
  print("\n")
  for tabla_detalle in mycursor:
    print(tabla_detalle)
  print("\n")
  
while True:
  print("MANTENIMIENTO DE LA TABLA PERSONA".center(40,"-"))
  print("1- Ingresar")
  print("2- Consultar")
  print("3- Borrar")
  print("4- Actualizar")
  print("5- Reporte")
  print("6- Salir")
  opcion = input("Por favor indique la opción: ")
  
  match opcion:
    case '1':
      ingresar()
    case '2':
      consultar()
    case '3':
      borrar()
    case '4':
      actualizar()
    case '5':
      reporte()
    case '6':
      print("Fin....")
      break
      # quit()
    case _:
      print("Opción no valida")