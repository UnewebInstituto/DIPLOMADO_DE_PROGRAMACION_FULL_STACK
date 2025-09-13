"""
Este programa realiza la lectura del archivo encuesta.txt,
mostrando el detalle de su contenido y efectuando
el calculo del promedio para la edad, peso y estatura.
"""
#Declaracion de variables
suma_edad = 0
suma_peso = 0
suma_estatura = 0
promedio_edad = 0
promedio_peso = 0
promedio_estatura = 0

while True:
    encuesta = open("./encuesta.txt", "r")
    #Se convierte el contenido del archivo en una lista
    data_encuesta = encuesta.readlines()
    #Se recorre el contenido de data encuesta
    for contenido_encuesta in data_encuesta:
        detalle_encuesta = contenido_encuesta.split(";")
        print("Nombre...:",detalle_encuesta[0])
        print("Apellido :",detalle_encuesta[1])
        print("Edad.....:",detalle_encuesta[2])
        print("Peso.....:",detalle_encuesta[3])
        print("Estatura.:",detalle_encuesta[4])
        print("---")
        #se acumula edad, peso y estatura
        suma_edad += eval(detalle_encuesta[2])
        suma_peso += eval(detalle_encuesta[3])
        suma_estatura += eval(detalle_encuesta[4])
    encuesta.close()
    promedio_edad = suma_edad/len(data_encuesta)
    promedio_peso= suma_peso/len(data_encuesta)
    promedio_estatura = suma_estatura/len(data_encuesta)

    print("promedios: ")
    print("Edad: ",promedio_edad)
    print("Peso: ",promedio_peso)
    print("Estatura: ",promedio_estatura)
    print("---")
    respuesta = input("¿Desea ver nuevamente el cotenido del reporte (S/N)?:")
    if respuesta.upper() == "S":
        continue
    else:
        break