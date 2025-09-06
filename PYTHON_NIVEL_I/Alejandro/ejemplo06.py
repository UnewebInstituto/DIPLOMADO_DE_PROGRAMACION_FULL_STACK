# Declaración de dependencia
import math

while True:
    while True:
        try:
            a = int(input("Ingrese el valor de a: "))
            if (a == 0):
                print("ERROR: Valor de a, debe ser diferentes de 0")
            else:
                break
        except ValueError:
            print("ERROR: El valor de a debe ser numérico")
            
    while True:
        try:
            b = int(input("Ingrese el valor de b: "))
            if (b == 0):
                print("ERROR: Valor de b, debe ser diferentes de 0")
            else:
                break
        except ValueError:
            print("ERROR: El valor de b debe ser numérico")
    
    while True:
        try:
            c = int(input("Ingrese el valor de c: "))
            if (c == 0):
                print("ERROR: Valor de c, debe ser diferentes de 0")
            else:
                break
        except ValueError:
            print("ERROR: El valor de c debe ser numérico")
    
    subRadical = pow(b,2) - 4*a*c
    if subRadical < 0:
        print("ERROR: Expresión sub radical no puede ser negativo")
    else:
        x1 = (-b + math.sqrt(subRadical))/(2*a)
        x2 = (-b - math.sqrt(subRadical))/(2*a)
        print("Resultado")
        print("X1:", x1)
        print("X2:", x2)
    
    continuar = input("¿Desea verificar otra palabra (S/N):?")
    if continuar.upper() == 'S':
        continue
    else:
        break