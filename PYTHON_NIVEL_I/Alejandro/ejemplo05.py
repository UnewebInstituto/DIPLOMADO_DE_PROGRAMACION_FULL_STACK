import modulo_ejem05

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
            resultado = modulo_ejem05.suma(n1,n2)
        case '-':
            resultado = modulo_ejem05.restar(n1,n2)
        case '*':
            resultado = modulo_ejem05.multiplicacion(n1,n2)
        case '/':
            resultado = modulo_ejem05.dividir(n1,n2)
        case '^':
            resultado = modulo_ejem05.potencia(n1,n2)
        case _:
            resultado = 'Operación no válida'
            
    print("El resultado de ", n1, operacion, n2, " es igual a: ", resultado)
    
    continuar = input("¿Desea realizar otra operación (S/N):?")
    if continuar.upper() == 'S':
        continue
    else:
        break