import modulo_ej05
#definir cuerpo principal del programa
while True:
    resultado=None
    while True:
        try:
            n1 =int(input('ingrese el primer numero(entero):'))
            break
        except ValueError:
            print('Error: El primer numero debe ser un valor entero')
    while True:   
        try:
            n2 =int(input('ingrese el segundo numero(entero):'))
            break
        except ValueError:
            print('Error: El  numero debe ser un valor entero')
    while True:
        operacion = input('Ingrese la operacion (+,-,/,*,^):')
        if operacion in ('+','-','/','*','^'):
            break
        else:
            print('Error: operecion no es validad')
    match operacion:
        case '+':
            resultado=modulo_ej05.sumar(n1,n2)
        case '-':
           resultado=modulo_ej05. restar(n1,n2)
        case '*':
            resultado=modulo_ej05.multiplicar(n1,n2)
        case '/':
            resultado=modulo_ej05.dividir(n1,n2)
        case '^':
            resultado=modulo_ej05.potencia(n1,n2)
        case _:
            resultado = 'operacion no valido'
    print('El resultado de ',n1, operacion, n2, ' es igual a:', resultado)
    continuar = input('¿Desea efectuar una nueva operacion(S/N)?')
    if continuar.upper()== 'S':
        continue
    else:
        break