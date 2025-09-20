def potencia(arg_base,arg_exp):
    producto = 1
    i = 0
    while i < arg_exp:
        producto = producto * arg_base
        i = i + 1
    return producto
def sumar(arg_n1, arg_n2):
    return arg_n1 + arg_n2

def restar(arg_n1, arg_n2):
    return arg_n1 - arg_n2

def multiplicar(arg_n1, arg_n2):
    return arg_n1 * arg_n2

def dividir(arg_n1, arg_n2):
    if arg_n2 == 0:
        return 'ERROR: División por cero'
    else:
        return arg_n1 / arg_n2

# Definir cuerpo principal del programa
while True:
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
            print("Error: Operación no es valida")
    match operacion:
        case '+':
            resultado = sumar(n1,n2)
        case '-':
            resultado = restar(n1,n2)
        case '*':
            resultado = multiplicar(n1,n2)
        case '/':
            resultado = dividir(n1,n2)
        case '^':
            resultado = potencia(n1,n2)
        case _:
            resultado = 'Operacion no valida'
    print("El resultado de", n1, operacion n2 "es igual a:", resultado) 
    continuar = input("¿Desea efectuar una nueva operacion? (S/N):?")
    if continuar.upper() == 'S':
        continue
    else:
        break