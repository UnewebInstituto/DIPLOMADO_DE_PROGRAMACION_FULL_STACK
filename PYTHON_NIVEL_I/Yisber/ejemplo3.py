#programa que muestra la cantidad de letra que conforman un palabra apartir de su ingreso por teclado

while True:
    palabra = ''
    diccionario_palabra = {}
    palabra = input('Por favor ingrese una palabra:')
    for letra in palabra:
        diccionario_palabra[letra] = palabra.count(letra)
        print ('La palabra :', palabra,'tiene la siguiente cantidad de letras')
        for letra in diccionario_palabra:
            print(letra, ':', diccionario_palabra[letra])
    continuar= input("Desea verificar otra palabra (s/n):")
    if continuar.upper()== 's':
        continue
    else:
            break
