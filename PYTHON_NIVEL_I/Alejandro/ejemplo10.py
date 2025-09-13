"""
Ejemplo10.py
Este programa genera un reporte del contenido del
archivo contactos.txt
"""

while True:
    
    try:
        contactos = open("./contactos.txt", "r")
        # Sube el contenido en una lista
        data_contactos = contactos.readlines()
        # Recorrido de la lista
        for contenido_contactos in data_contactos:
            detalle_contactos = contenido_contactos.split(";")
            print("id contacto: ", detalle_contactos[0])
            print("Nombre: ", detalle_contactos[1])
            print("Apellido: ", detalle_contactos[2])
            print("Teléfono: ", detalle_contactos[3])
            print("Correo: ", detalle_contactos[4])
            print("---")
        contactos.close()
    except FileNotFoundError:
        print("ERROR: Archivo contactos.txt no disponible")
    
    respuesta = input("¿Desea mostrar nuevamente el contenido de contactos (S/N)?:")
    if respuesta.upper() == 'S':
        continue
    else:
        break
print("Fin del programa")