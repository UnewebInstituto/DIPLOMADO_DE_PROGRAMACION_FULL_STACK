def potencia(base, exponente):
    producto = 1
    i = 0
    while i < exponente:
        producto = producto * base
        i = i + 1
    return producto

def suma(n1, n2):
    return n1 + n2

def restar(n1, n2):
    return n1 - n2

def multiplicacion(n1, n2):
    return n1 * n2

def dividir(n1, n2):
    if n2 == 0:
        return 'ERROR: División por cero'
    else:
        return n1 / n2
    
while True:
    resultado = None
    while True:
        try:
            n1 = int(input("Ingrese el primer numero: "))
            break
        except ValueError:
            print("ERROR: El primer numero debe ser un valor entero")
    while True:
        try:
            n2 = int(input("Ingrese el segundo numero: "))
            break
        except ValueError:
            print("ERROR: El segundo numero debe ser un valor entero")
    while True:
        operacion = input("Ingrese la operación (+,-,*,/,^): ")
        if operacion in ('+','-','*','/','^'):
            break
        else:
            print("ERROR: Operación no es valida")
            
    match operacion:
        case '+':
            resultado = suma(n1,n2)
        case '-':
            resultado = restar(n1,n2)
        case '*':
            resultado = multiplicacion(n1,n2)
        case '/':
            resultado = dividir(n1,n2)
        case '^':
            resultado = potencia(n1,n2)
        case _:
            resultado = 'Operación no válida'
            
    print("El resultado de ", n1, operacion, n2, " es igual a: ", resultado)
    
    continuar = input("¿Desea realizar otra operación (S/N):?")
    if continuar.upper() == 'S':
        continue
    else:
        break