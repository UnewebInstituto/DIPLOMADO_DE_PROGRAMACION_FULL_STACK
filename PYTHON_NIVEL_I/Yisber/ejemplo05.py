#dECLARACIONde dependencia (módulo) 

import modulo_ej05
# Definir cuerpo principal del programa
while True:
    resultado = None
    while True:
        try:
            n1 = int(input("Ingrese el primer número(entero):"))
            break
        except ValueError:
            print("Error: El primer número debe ser un valor entero")
    while True:
        try:
            n2 = int(input("Ingrese el segundo número(entero):"))
            break
        except ValueError:
            print("Error: El número número debe ser un valor entero")
    while True:
        operacion = input("Ingrese la operación (+,-,*,/,^):")
        if operacion in ('+','-','*','/','^'):
            break
        else:
            print("Error: Operación no es validad")
    match operacion:
        case '+':
            resultado = modulo_ej05.sumar(n1,n2)
        case '-':
            resultado = modulo_ej05.restar(n1,n2)
        case '*':
            resultado = modulo_ej05.multiplicar(n1,n2)
        case '/':
            resultado = modulo_ej05.dividir(n1,n2)
        case '^':
            resultado = modulo_ej05.potencia(n1,n2)
        case _:
            resultado = 'Operación no válida'
    print("El resultado de ", n1, operacion, n2, " es igual a:", resultado)
    continuar = input("¿Desea efectuar una nueva operacion (S/N):?")
    if continuar.upper() == 'S':
        continue
    else:
        break


