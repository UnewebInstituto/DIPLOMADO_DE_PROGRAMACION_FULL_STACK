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
  if (len(myresult)):
    for detalle in myresult:
      print(detalle)
  else:
    print("LA TABLA personas ESTA VACÍA")
  print("\n")
  
def borrar():
  sql = "DELETE FROM personas WHERE id=%s"
  print("\n")
  id_persona = int(input("INDIQUE EL ID DEL USUARIO A ELIMINAR: "))
  dato_condicion = (id_persona,)
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql, dato_condicion)
  conexion.mydb.commit()
  print("Numeros de registros afectados:", mycursor.rowcount)
  print("\n")
  
def actualizar():
  print("\n")
  id_persona = int(input("INDIQUE EL ID DEL USUARIO QUE DESEA ACTUALIZAR: "))
  campo = input("INDIQUE EL CAMPO DEL USUARIO QUE DESEA ACTUALIZAR (cedula, nombres, apellidos, direccion, fechanac o telefono): ")
  nuevo_valor = input(f"INDIQUE EL NUEVO VALOR DEL CAMPO {campo} QUE DESEA ACTUALIZAR: ")
  sql = f"UPDATE personas SET {campo}=%s WHERE id=%s"
  valores = (nuevo_valor, id_persona,)
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql, valores)
  conexion.mydb.commit()
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