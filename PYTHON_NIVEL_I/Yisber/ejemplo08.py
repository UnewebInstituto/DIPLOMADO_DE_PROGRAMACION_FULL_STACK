"""este programa realiza la lectura del archivo encuesta.txt , mostrando el detalle de su contenido y efectuando el calculo del promedio para la edad peso y estatura"""
#declaracion de variables
suma_edad =0
suma_peso =0
suma_estatura =0
promedio_edad =0
promedio_peso =0
promedio_estatura =0
while True:
    encuesta = open("./encuesta.txt","r")
    #se convierte el contenido del archivo a una lista
    data_encuesta = encuesta.readlines()
    #se recorre el conmtenido de la data encuentas
    for contenido_encuesta in data_encuesta:
        detalle_encuesta = contenido_encuesta.split(";")
        print("Nombre: ", detalle_encuesta[0])
        print("Apellido: ", detalle_encuesta[1])
        print("Edad: ", detalle_encuesta[2])
        print("Peso: ", detalle_encuesta[3])
        print("Estatura: ", detalle_encuesta[4])
        print("---")
        #se acuimula edad peso y estatura
        suma_edad += eval (detalle_encuesta[2])
        suma_peso += eval (detalle_encuesta[3])
        suma_estatura += eval (detalle_encuesta[4])
    encuesta.close()
    #la funcion len retorna la cantidad de elementos de una lista
    promedio_edad = suma_edad/len(data_encuesta)
    promedio_peso = suma_peso/len(data_encuesta)
    promedio_estatura = suma_estatura/len(data_encuesta)
    print ("Promedio:")
    """
    print ("Edad promedio: %.2f"%promedio_edad)
    print ("Peso promedio:%.2f"%promedio_peso)
    print ("Estatura promedio:%.2f"%promedio_estatura)

    # 2da. Forma
    print(f"Edad: {promedio_edad:.2f}")
    print(f"Peso: {promedio_peso:.2f}")
    print(f"Estatura: {promedio_estatura:.2f}")
    """

    # 3ra. Forma
    print("Edad: {:.2f}".format(promedio_edad))
    print("Peso: {:.2f}".format(promedio_peso))
    print("Estatura: {:.2f}".format(promedio_estatura))

    print("----")
    respuesta = input("Desea ver nuevamente el contenido del reporte (s/n):?")
    if respuesta.upper() == "S":
        continue
    else:
        break