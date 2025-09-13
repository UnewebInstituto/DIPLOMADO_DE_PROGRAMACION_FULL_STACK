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
    # Declaración de variables
    nombre = ''
    apellido = ''
    edad = 0
    peso = 0
    estatura = 0 
    registro = ""
    # Ingreso de los datos
    print("Por favor ingrese los siguientes datos")
    nombre = input("Nombre:")
    apellido = input("Apellido:")
    try:
        while True:
            edad = int(input("Edad:"))
            break
    except ValueError:
        print("Error: Edad debe ser un valor numérico entero.")
    try:
        while True:
            peso = float(input("Peso:"))
            break
    except ValueError:
        print("Error: Peso debe ser un valor numérico.")
    try:
        while True:
            estatura = float(input("Estatura:"))
            break
    except ValueError:
        print("Error: Estatura debe ser un valor numérico.")
    # Creación del registro de datos
    registro = nombre + ";" + apellido + ";" + str(edad) + ";" + str(peso) + ";" + str(estatura) + ";\n"
    # Apertura del archivo en modo de añadir
    encuesta = open("./encuesta.txt","a")
    # Escritura del archivo
    encuesta.write(registro)
    # Cierre del archivo
    encuesta.close()
    respuesta = input("¿Desea ingresar un nuevo registro (S/N):?")
    if respuesta.upper() == "S":
        continue
    else:
        break













































































































