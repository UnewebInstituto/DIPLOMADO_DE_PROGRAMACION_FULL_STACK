#declaracion de dependencia
import match
#cuerpo principal del prog
while True:
    while True:
        try:
            a = float(input("Ingrese el valor de a:"))
            if (a == 0):
                print('Error: Valor de a, debe ser diferente de 0')
            else:
                break
        except ValueError:
            print("Error: El valor de a debe ser numérico")
    while True:
        try:
            b = float(input("Ingrese el valor de b:"))
            break
        except ValueError:
            print("Error: El valor de b debe ser numérico")
    while True:
        try:
            c = float(input("Ingrese el valor de c:"))
            break
        except ValueError:
            print("Error: El valor de c debe ser numérico")
    subradical = pow(b,2) - 4*a*c
    if subradical < 0>
        print('error expresion subradical no puede ser negartiva')
    else:
        x1 = (-b + math.sqrt(subRadical))/(2*a)
        x2 = (-b - math.sqrt(subRadical))/(2*a)
        print("Resultado")
        print("x1:",x1)
        print("x2:",x2)
    continuar = input('¿Desea efectura una nueva operación (S/N)?')
    if continuar.upper() == 'S':
        continue
    else:
        break




    continuar = input('¿Desea efectura una nueva operación (S/N)?')
    if continuar.upper() == 'S':
        continue
    else:
        break