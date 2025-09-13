"""
Ejemplo08.py
Este programa realiza la lectura del archivo encuesta.txt, mostrando el detalle de su contenido y efectuando
el cálculo del promedio para la edad, peso y estatura.
"""
# Declaración de variables
while True:
    encuesta = open("./encuesta.txt", "r")
    # Se convierte el contenido del archivo en una lista
    data_encuesta = encuesta.readlines()
    # Se recorre el contenido de data_encuesta
    suma_edad = 0
    suma_peso = 0
    suma_estatura = 0
    promedio_edad = 0
    promedio_peso = 0
    promedio_estatura = 0

    for contenido_encuesta in data_encuesta:
        detalle_encuesta = contenido_encuesta.split(";")
        print("Nombre....:", detalle_encuesta[0])
        print("Apellido..:", detalle_encuesta[1])
        print("Edad......:", detalle_encuesta[2])
        print("Peso......:", detalle_encuesta[3])
        print("Estatura..:", detalle_encuesta[4])
        print("---")
        # Se acumula edad, peso y estatura
        suma_edad += eval(detalle_encuesta[2])
        suma_peso += eval(detalle_encuesta[3])
        suma_estatura += eval(detalle_encuesta[4])
    encuesta.close()
    # La función len() retorna la cantidad de elementos de una lista
    promedio_edad = suma_edad/len(data_encuesta)
    promedio_peso = suma_peso/len(data_encuesta)
    promedio_estatura = suma_estatura/len(data_encuesta)
    print("Promedios:")
    print("Edad:",promedio_edad)
    print("Peso:",promedio_peso)
    print("Estatura:",promedio_estatura)
    print("---")
    respuesta = input("¿Desea ver nuevamente el contenido del reporte (S/N):?")
    if respuesta.upper() == "S":
        continue
    else:
        break
