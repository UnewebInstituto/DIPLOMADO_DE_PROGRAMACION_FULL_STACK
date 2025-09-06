# programa que muestra la cantidad de letras que conforman una palabra a partir del ingreso de dicha palabra por teclado 

while True:
    palabra = ''
    diccionario_palabra = {}
    palabra = input('Por favor ingrese una palabra:')
    for letra in palabra:
        diccionario_palabra[letra] = palabra.count(letra)
    print('La palabra:',palabra,' tiene la siguiente cantidad de letras:')
    for letra in diccionario_palabra:
        print(letra, ':', diccionario_palabra[letra])
    continuar = input("¿Desea verificar otra palabra (S/N):?")
    if continuar.upper() == 'S':
        continue
    else:
        break




































