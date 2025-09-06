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