"""
ejemplo07.py
este programa registra en un arfchivo plano: 
-Nombre
-apellido
-edad
-peso
-estatura

*archivo plano : encuenta.txt
"""

while True:
    #declaracion de variables
    nombre=''
    apellido=""
    edad= 0
    peso= 0
    estatura=0
    #Ingreso de Datos
    print("Por favor ingrese  los siguientes datos")
    nombre =input("Nombre:")
    apellido =input("Apellido:")
    try:
        while True:
            edad =int (input("edad:"))
            break
    except ValueError:
        print("Error: La edad debe ser un valor númerico entero.")
    try:
        while True:
            peso = float (input("peso:"))
            break
    except ValueError:
        print("Error: El peso debe ser un valor númerico.")
    
    try:
        while True:
            estatura = float(input("Estatura:"))
            break
    except ValueError:
        print("Error: La edad debe ser un valor númerico.")
    #creacion del registro de datos
    registro = nombre + ";" + apellido + ";" + str(edad) + ";" + str(peso) + ";" + str(estatura) + ";\n"
    #apertura del archivo
    encuesta = open ("./encuesta.txt","a")
    #escritura del archivo
    encuesta.write(registro)
    #Cierre
    encuesta.close()

    respuesta = input("Desea Ingresar un Nuevo Registro (s/n):?")
    if respuesta.upper() == "S":
        continue
    else:
        break