""" se requiere el desarro de un programa en py que mediante el uso de archivos planos registre y permita la consulta de una agenda telefonica cuyos datos son:_
--id: corresponde a un numero consecutivo de registro
--Nombre de contacto:
--Apellido de contacto
--Telefono: del contacto
--Correo Electronico: del contacto
son dos programas en el primero se guardan los datos indicados 
en el 2 muestra el contenido de los contactos almacenados
Nombre del archivo plano contactos.txt
"""
try:
    # Abre el archivo de contactos de sólo lectura
    contactos = open("./contactos.txt", "r")
    # Cuenta el número de contacto pre existentes
    nro_contactos = len(contactos.readlines())
    # Se cierra el archivo de contactos
    contactos.close()
except FileNotFoundError:
    nro_contactos = 0
#SE INICIALIZA CONTACTO CON EL NRO DE CONTACTOS PRE-EXISTENTE
contacto_id = nro_contactos
while True:
    # Inicialización de variables
        nombre = ''
        apellido = ''
        telefono = ''
        correo = ''
        print("Registro de contactos".center(50,"-"))
        print("Ingrese los datos del contacto.")
        # Captura de los datos para los contactos
        nombre = input("NOMBRE:")
        apellido = input("APELLIDO:")
        telefono = input("TELÉFONO:")
        correo = input("CORREO ELECTRÓNICO:")
        contacto_id += 1
        # Se define el registro para almacenar el contacto
        registro = str(contacto_id) + ";" + nombre + ";" + apellido + ";" + telefono + ";" + correo + ";\n"
        # Apertura del archivo
        contactos = open ("./contactos.txt", "a")
            # Escritura del archivo de contactos
        contactos.write(registro)
        # Se cierra el archivo de contactos
        contactos.close()
        respuesta = input("¿Desea almacenar un nuevo contacto (S/N):?")
        if respuesta.upper() == "S":
            continue
        else:
            break
print("Fin del resgitro de contactos")
    
