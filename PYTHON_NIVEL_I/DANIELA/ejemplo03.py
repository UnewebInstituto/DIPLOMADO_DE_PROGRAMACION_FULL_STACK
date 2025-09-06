#PROGRAMA QUE MUESTRA LA CANTIDAD DE LETRAS QUE CONFORMAN UNA PALABRA
#A PARTIR DEL INGRESO DE DICHA PALABRA POR EL TECLADO
while True:
    palabra = ''
    diccionario_palabra = {}
    palabra = input('Por favor ingrese una palabra:')
    for letra in palabra:
        diccionario_palabra[letra] = palabra.count(letra)
        print('la palabra:',palabra,' tiene la sisguiente cantidad de letras')
    for letra in diccionario_palabra:
        print(letra,':',diccionario_palabra[letra]) 
    continuar = input("¿Desea verificar otra palabra (S/N):?")
    if continuar.upper() == 'S':
        continue
    else:
        break
            
