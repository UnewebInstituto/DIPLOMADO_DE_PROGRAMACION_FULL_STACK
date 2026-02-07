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
    nombre_campo = ['ID:','CÉDULA:','NOMBRES:','APELLIDOS:','DIRECCIÓN:','FECHA DE NACIMIENTO:', 'TELEFONO:']
    print("Consultar datos en Personas")
    buscar = input("Por favor ingrese el valor del dato a través del cuál \nquiere efectuar la consulta (cedula, \nnombres,apellidos, dirección o teléfono):")
    termino = f"%{buscar}%"
    sql = """SELECT * FROM personas where 
    cedula like %s OR
    nombres like %s OR
    apellidos like %s OR
    direccion like %s OR 
    telefono like %s"""
    dato = (termino,termino,termino,termino,termino)
    mycursor = conexion.mydb.cursor()
    mycursor.execute(sql, dato)
    myresult = mycursor.fetchall()
    if (len(myresult)):
        print('\n')
        print(f"ATENCIÓN: Resultado de la consulta en función del valor {buscar}")
        for detalle in myresult:
            #print(detalle)
            indice = 0
            for campo in detalle:
                print(nombre_campo[indice], campo)
                indice += 1
            print('\n')      
    else:
        print("ATENCIÓN: No se encontaron valores presentes al efectuar la consulta")

def reporte():
    nombre_campo = ['ID','CÉDULA','NOMBRES','APELLIDOS','DIRECCIÓN','FECHA DE NACIMIENTO', 'TELEFONO']
    print("Reporte datos de Personas")
    sql = "SELECT * FROM personas"
    mycursor = conexion.mydb.cursor()
    mycursor.execute(sql)
    myresult = mycursor.fetchall()
    if (len(myresult)):
        print('\n')
        print(f"ATENCIÓN: Resultado del reporte")
        print(nombre_campo[0], '   ', nombre_campo[1], '   ', nombre_campo[2], '   ', nombre_campo[3] , '   ', nombre_campo[4], '   ', nombre_campo[5], '   ', nombre_campo[6])
        for detalle in myresult:
            print(detalle[0], '   ', detalle[1], '   ', detalle[2], '   ', detalle[3] , '   ', detalle[4], '   ', detalle[5], '   ', detalle[6])
    else:
        print("ATENCIÓN: No se encontaron valores presentes en la tabla Personas")
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
            indice = 0
            print(nombre_campo[0], detalle[0]) #id
            print(nombre_campo[1], detalle[1]) #Cédula
            print(nombre_campo[2], detalle[2]) #Nombres
            tmp_nombres = input("Nuevos Nombres (Si no hay cambios oprima ENTER):")
            print(nombre_campo[3], detalle[3]) #Apellidos
            tmp_apellidos = input("Nuevos Apellidos (Si no hay cambios oprima ENTER):")
            print(nombre_campo[4], detalle[4]) #Dirección
            tmp_direccion = input("Nueva Dirección (Si no hay cambios oprima ENTER):")
            print(nombre_campo[5], detalle[5]) #Fecha de Nacimiento
            tmp_fecha_nacimiento = input("Nueva Fecha de Nacimiento (aaaa-mm-dd) (Si no hay cambios oprima ENTER):")
            print(nombre_campo[6], detalle[6]) #Teléfono
            tmp_telefono = input("Nuevo Teléfono (Si no hay cambios oprima ENTER):")
            
            # Mantener valores originales si el usuario presiona ENTER
            if tmp_nombres == "":
                tmp_nombres = detalle[2]
            if tmp_apellidos == "":
                tmp_apellidos = detalle[3]
            if tmp_direccion == "":
                tmp_direccion = detalle[4]
            if tmp_fecha_nacimiento == "":
                tmp_fecha_nacimiento = detalle[5]
            if tmp_telefono == "":
                tmp_telefono = detalle[6]
            
            # Ejecutar la actualización
            sql_update = "UPDATE personas SET nombres = %s, apellidos = %s, direccion = %s, fechanac = %s, telefono = %s WHERE id = %s"
            datos_update = (tmp_nombres, tmp_apellidos, tmp_direccion, tmp_fecha_nacimiento, tmp_telefono, detalle[0])
            mycursor.execute(sql_update, datos_update)
            conexion.mydb.commit()
            print("Número de registros actualizados:", mycursor.rowcount)
            print("\n")
    else:
        print("ATENCIÓN: No se encontró el Id indicado al efectuar la consulta")


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



