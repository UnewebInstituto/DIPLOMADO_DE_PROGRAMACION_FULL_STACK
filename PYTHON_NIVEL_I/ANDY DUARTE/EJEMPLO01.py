# este programa produce la serie fibonacci 
#para una cantidad n de elementos
while True:
    print('Ejemplo01 - Serie fibonacci'.center(60,'-'))
    n1 = 0
    n2 = 1
    cantidad = 0
    contador = 2
    suma = 0 
    while True:
        try:
         cantidad= int(input('por favor indicar la cantidad de numeros en la serie:'))
         break
        except ValueError:
            print('ERROR:se espera que se ingrese un numero:')

    print(n1)
    print(n2)
    while contador < cantidad:
       suma = n1 + n2
       print(suma) 
       n1 = n2
       n2 = suma
       contador = contador + 1

    continuar = input ('¿DESEA PRODUCIR UNA NUEVA SERIE S/N?')
    if continuar.upper() == 'S':
        continue
    else:
        break
print('fin del ejemplo01')
