"""
Ejemplo07.py
Este programa registra en un archivo plano:
- Nombre
- Apellido
- Edad
- Peso
- Estatura
* Archivo plano: encuesta.txt
"""

while True:
    
    nombre = ''
    apellido = ''
    edad = 0
    peso = 0
    estatura = 0
    
    # Ingreso de datos
    print("Ingrese los siguientes datos!")
    nombre = input("Nombre: ")
    apellido = input("Apellido: ")
    
    while True:
        try:
            edad = int(input("Edad: "))
            break
        except ValueError:
            print("Debe ser un valor númerico entero")

    while True:
        try:
            peso = int(input("Peso: "))
            break
        except ValueError:
            print("Debe ser un valor númerico")
            
    while True:
        try:
            estatura = float(input("Estatura: "))
            break
        except ValueError:
            print("Debe ser un valor númerico")

    # Creacion de registro de datos
    
    registro = nombre + ";" + apellido + ";" + str(edad) + ";" + str(peso) + ";" + str(estatura) + ";\n"    
    
    # Apertura del archivo
    encuesta = open("./encuesta.txt","a")
    # Escritura del archivo
    encuesta.write(registro)
    # Cierre del archivo
    encuesta.close()
    
    respuesta = input("¿Desea ingresar un nuevo registro (S/N)?:")
    if respuesta.upper() == 'S':
        continue
    else:
        break