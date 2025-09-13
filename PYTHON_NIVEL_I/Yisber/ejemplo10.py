"""
Ejemplo10.py
Este programa genera un reporte del contenido del
archivo contactos.txt
"""
while True:
    try:
        # Se intenta abrir el archivo contactos.txt
        contactos = open("./contactos.txt","r")
        # Se sube el contenido en una lista
        data_contactos = contactos.readlines()
        # Recorrido de la lista
        for contenido_contactos in data_contactos:
            detalle_contactos = contenido_contactos.split(";")
            print("id contacto:", detalle_contactos[0])
            print("Nombre:", detalle_contactos[1])
            print("Apellido:", detalle_contactos[2])
            print("Teléfono:", detalle_contactos[3])
            print("Correo:", detalle_contactos[4])
            print ("---")
        # Cerrar archivo contactos.txt
        contactos.close()
    except FileNotFoundError:
        print("ERROR: Archivo contactos.txt no disponible")
    respuesta = input("¿Desea mostrar nuevamente el contenido de contactos (S/N):?")
    if respuesta.upper() == "S":
        continue
    else:
        break
print("Fin del programa...")

