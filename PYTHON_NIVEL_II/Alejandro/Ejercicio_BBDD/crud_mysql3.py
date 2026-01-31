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
  datos = (cedula,nombres,apellidos,direccion,fechanac,telefono)
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql,datos)
  conexion.mydb.commit()
  print("Id del registro insertado:", mycursor.lastrowid)
  print("\n")
  
def consultar():
  nombre_campo = ['ID:','CÉDULA:','NOMBRES:','APELLIDOS:','DIRECCION:','FECHA DE NACIMIENTO:','TELÉFONO:']
  print("\nCONSULTAR DATOS EN PERSONAS")
  buscar = input("POR FAVOR INGRESE EL VALOR DEL DATO A TRAVES DEL CUAL \nQUIERE AFECTUAR LA CONSULTA (cedula, nombres, apellidos, direccion o telefono): ")
  sql = """SELECT * FROM personas WHERE 
    cedula LIKE %s OR 
    nombres LIKE %s OR 
    apellidos LIKE %s OR 
    direccion LIKE %s or 
    telefono LIKE %s """
  termino = f"%{buscar}%"
  dato = (termino,termino,termino,termino,termino)
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql, dato)
  myresult = mycursor.fetchall()
  print(f"\nRESULTADO DE LA CONSULTA EN FUNVIÓN DEL VALOR {buscar}")
  if (len(myresult)):
    for detalle in myresult:
      # print(detalle)
      indice = 0
      for campo in detalle:
        print(nombre_campo[indice], campo)
        indice += 1
      print("\n")
  else:
    print("ATENCIÓN: NO SE ENCONTRARON VALORES PRESENTES AL EFECTUAR LA CONSULTA")
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
  """
  tmp_campos
  0: NOMBRES
  1: APELLIDOS
  2: DIRECCION
  3: FECHA NACIMIENTO
  4: TELÉFONO
  """
  tmp_nombres = ""
  tmp_apellidos = ""
  tmp_fecha_nacimiento = ""
  tmp_direccion = ""
  tmp_telefono = ""
  nombre_campo = ['ID:','CÉDULA:','NOMBRES:','APELLIDOS:','DIRECCIÓN:','FECHA DE NACIMIENTO:', 'TELEFONO:']
  print("Actualizar datos en Personas")
  buscar = input("Por favor ingrese el valor del ID de la persona que se desea actualizar:")
  sql = "SELECT * FROM personas where id = %s"
  dato = (buscar,)
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql, dato)
  myresult = mycursor.fetchall()
  if (len(myresult)):
    print('\n')
    print(f"ATENCIÓN: Resultado de la consulta en función del Id {buscar}")
    for detalle in myresult:
      print(nombre_campo[0], detalle[0]) #id
      print(nombre_campo[1], detalle[1]) #Cédula
      print(nombre_campo[2], detalle[2]) #Nombres
      tmp_nombres = input("Nuevos Nombres (Si no hay cambios oprima ENTER):")
      print(nombre_campo[3], detalle[3]) #Apellidos
      tmp_apellidos = input("Nuevos Apellidos (Si no hay cambios oprima ENTER):")
      print(nombre_campo[4], detalle[4]) #Dirección
      tmp_direccion = input("Nueva Dirección (Si no hay cambios oprima ENTER):")
      print(nombre_campo[5], detalle[5]) #Fecha de Nacimiento
      tmp_fecha_nacimiento = input("Nueva Fecha de Nacimiento (Si no hay cambios oprima ENTER):")
      print(nombre_campo[6], detalle[6]) #Teléfono
      tmp_telefono = input("Nueva Teléfono (Si no hay cambios oprima ENTER):") 
      if len(tmp_nombres) == 0:
        tmp_nombres = detalle[2]
      if len(tmp_apellidos) == 0:
        tmp_apellidos = detalle[3]
      if len(tmp_direccion) == 0:
        tmp_direccion = detalle[4]
      if len(tmp_fecha_nacimiento) == 0:
        tmp_fecha_nacimiento = detalle[5]
      if len(tmp_telefono) == 0:
        tmp_telefono = detalle[6]  
      sql = "UPDATE personas SET nombres = %s, apellidos = %s, direccion = %s, fechanac = %s, telefono = %s WHERE id = %s"
      valores = (tmp_nombres, tmp_apellidos, tmp_direccion, tmp_fecha_nacimiento, tmp_telefono, buscar,)
      mycursor = conexion.mydb.cursor()
      mycursor.execute(sql, valores)
      conexion.mydb.commit()
      print("Numero de registro actualizado:", mycursor.rowcount)
  else:
    print("ATENCIÓN: No se encontró el Id indicado al efectuar la consulta")

def reporte():
  nombre_campo = ['ID','CÉDULA','NOMBRES','APELLIDOS','DIRECCION','FECHA DE NACIMIENTO','TELÉFONO']
  print("\nCONSULTAR DATOS EN PERSONAS\n")
  print(nombre_campo[0],'    ',nombre_campo[1],'    ',nombre_campo[2],'    ',nombre_campo[3],'    ',nombre_campo[4],'    ',nombre_campo[5],'    ',nombre_campo[6])
  sql = "SELECT * FROM personas"
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql)
  myresult = mycursor.fetchall()
  if (len(myresult)):
    for detalle in myresult:
        print(detalle[0],'   ',detalle[1],'   ',detalle[2],'   ',detalle[3],'   ',detalle[4],'   ',detalle[5],'   ',detalle[6])
  else:
    print("NO SE ENCONTRARON VALORES PRESENTES EN LA TABLA PERSONA")
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