"""
Nota: Las operaciones de consultar, actualizar y borrar, se deben efectuar por el 
campo id del registro.
"""

import conexion

def ingresar():
    cedula = input('CEDULA:')
    nombres = input('NOMBRES:')
    apellidos = input('APELLIDOS:')
    direccion = input('DIRECCION:')
    fechanac = input('FECHA NACIMIENTO (aaaa-mm-dd):')
    telefono = input('TELEFONO:')
    sql = "INSERT INTO personas(cedula, nombres, apellidos, direccion, fechanac, telefono) values (%s, %s, %s, %s, %s, %s)"
    datos = (cedula, nombres, apellidos, direccion, fechanac, telefono)
    mycursor = conexion.mydb.cursor()
    mycursor.execute(sql, datos)
    conexion.mydb.commit()
    print("Id del registro insertado:", mycursor.lastrowid)
    return

def consultar():
  print("Consultar datos en Personas")
  buscar = input("Por favor ingrese el valor del dato a través del cuál \nquiere efectuar la consulta (cedula, nombres,apellidos, dirección o teléfono):")
  sql = "SELECT * FROM personas where cedula like '%s%' OR nombres like '%s%' OR apellidos like '%s%' OR direccion like '%s%' or telefono '%s%'"
  dato = (buscar,buscar,buscar,buscar,buscar)
  mycursor = conexion.mydb.cursor()
  mycursor.execute(sql)
  myresult = mycursor.fetchall()
  print("\n")
  if (len(myresult)):
    for detalle in myresult:
      print(detalle)
  else:
    print("ATENCIÓN: No se encontaron valores presentes al efectuar la consulta")
  print("\n")

while True:
    print("Mantenimiento de tabla personas".center(40,"-"))
    print("1-Ingresar")
    print("2-Consultar")
    print("3-Borrar")
    print("4-Actualizar")
    print("5-Reporte")
    print("6-Salir")
    opcion=input("Por favor indique la opción:")
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
            print('Fin...')
            break
        case _:
            print('Opción no valida')







