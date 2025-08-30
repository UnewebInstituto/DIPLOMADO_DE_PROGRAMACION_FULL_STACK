# Este programa produce la serie Fibonacci
# para una cantidad n de elementos
print("ejempo01 - serie fibonacci".center(60,-))
n1 = 0
n2 = 1
cantidad = 0
contador = 2
suma = 0
# entrada de datos
while True:
    try:
        cantidad = int(input("por favor indicar la cantidad de numeros en la serie:"))
        break #interrumpe el while
    except:
        print ("Error: debe ingresar un numero")
# proceso principal
print (n1)
print (n2)
while contador < cantidad:
    suma = n1 + n2
    print (suma)
    n1 = n2
    n2 = suma
    contador = contador + 1