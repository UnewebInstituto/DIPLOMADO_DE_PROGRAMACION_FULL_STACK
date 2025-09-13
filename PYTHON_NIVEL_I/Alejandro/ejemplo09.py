"""
Se requiere el desarrollo de un program en Python, que
mediante el uso de archivos planos, registre y permita
la consulta de una agenda telefónica, cuyos datos son:
1) Id: Corresponde a un número consecutivo de registro
2) Nombre: Nombre del contacto
3) Apellido: Apellido del contacto
4) Teléfono: Número telefónico del contacto
5) Correo electronico: Correo electrónico del contacto.
Son 2 programas en el primero se guardan los datos 
arribas indicado. En el segundo muestra el contenido
de los contactos almacenados.
Nombre del archivo plano: "contactos.txt"
"""
try:
    contactos = open("./contactos.txt", "r")
    # Cuenta el numero de contactos pre existentes
    nro_contactos = len(contactos.readlines())
    contactos.close()
except FileNotFoundError:
    nro_contactos = 0
    
# Se inicializa contactos id con el numero de contactos pre existentes 
contacto_id = nro_contactos

while True:
    
    nombre = ''
    apellido = ''
    telefono = ''
    correo = ''
    
    # Ingreso de datos
    print("Registro de contactos telefonicos!".center(50,"-"))
    print("Ingrese los datos del contacto!")
    nombre = input("Nombre: ")
    apellido = input("Apellido: ")
    telefono = input("Teléfono: ")
    correo = input("Correo: ")
    contacto_id += 1
    
    registro = str(contacto_id) + ";" + nombre + ";" + apellido + ";" + telefono + ";" + correo + ";\n"
    
    # Apertura del archivo
    contactos = open("./contactos.txt","a")
    # Escritura del archivo
    contactos.write(registro)
  # Cierre del archivo
    contactos.close()
    
    respuesta = input("¿Desea guardar un nuevo contacto (S/N)?:")
    if respuesta.upper() == 'S':
        continue
    else:
        break
print("Fin del registro de contactos")