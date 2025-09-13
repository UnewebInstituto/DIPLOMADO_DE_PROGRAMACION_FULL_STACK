"""
Este programa registra en un archivo plano:
-nombre
-apellido
-edad
-peso
-estatura

Archivo plano: encuesta.txt
"""
while True:
    #Delcaración de variables
    nombre = ''
    apellido = ''
    edad = 0
    peso = 0
    estatura = 0
    registro = ''

    #Ingreso de datos
    print("Por favor ingrese los siguientes datos")
    nombre = input("Nombre:")
    apellido = input("Apellido")
    try:
        while True:
            edad = int(input("Edad:"))
            break
    except ValueError:
        print("Error: edad debe ser un valor numérico entero.")

    try:
        while True:
            peso = float(input("Peso:"))
            break
    except ValueError:
        print("Error: edad debe ser un valor numérico.")

    try:
        while True:
            estatura = float(input("Estatura:"))
            break
    except ValueError:
        print("Error: edad debe ser un valor numérico.")

#Creacion del registro de datos
    registro = nombre +";" + apellido + ";" + str(edad)+ ";" + str(peso) + ";" + str(estatura) + ";\n"

#Apertura del archivo
    encuesta = open("./encuesta.txt", "a")
#Escritura el archivo
    encuesta.write(registro)
#Cierre de archivo
    encuesta.close()
    
    respuesta = input("¿Desea ingresar un nuevo registro? (S/N)")
    if respuesta.upper() == "S":
        continue
    else:
        break