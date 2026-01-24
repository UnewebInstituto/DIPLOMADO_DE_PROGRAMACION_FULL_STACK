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







