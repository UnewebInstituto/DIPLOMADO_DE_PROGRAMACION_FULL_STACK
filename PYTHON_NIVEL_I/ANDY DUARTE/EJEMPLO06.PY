import math
while True:
    while True:
        try:
            a =float(input('ingrese el valor de a:'))
            if (a == 0 ):
                print('Error:el valor de a, debe ser diferente de 0')
            else:
                break
        except ValueError:
            print('Error: El valor de a, debe ser diferente de 0 ')
    while True:
        try:
            b =float(input('ingrese el valor de b:'))
            break
        except ValueError:
            print('Error: El valor de b debe ser numerico ')
    while True:
        try:
            c =float(input('ingrese el valor de c:'))
            break
        except ValueError:
            print('Error: El valor de c debe ser numerico ')
    subRadical = pow(b,2) -4*a*c
    if subRadical < 0:
        print('Error: expresion sub radical no puede ser negativa')
    else:
        x1 =(-b + math.sqrt(subRadical))/(2*a)
        x2 =(-b + math.sqrt(subRadical))/(2*a)
        print('resultado')
        print('x1:', x1)
        print('x2:', x2)

    continuar = input ('¿Desea efectuar una nueva operacion (s/n)?')
    if continuar.upper() == 'S':
        continue
    else:
        break