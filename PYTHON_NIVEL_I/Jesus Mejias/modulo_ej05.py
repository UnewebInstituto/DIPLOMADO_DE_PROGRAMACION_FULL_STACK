def potencia(arg_base, arg_expo):
    producto = 1
    i = 0
    while i < arg_expo:
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