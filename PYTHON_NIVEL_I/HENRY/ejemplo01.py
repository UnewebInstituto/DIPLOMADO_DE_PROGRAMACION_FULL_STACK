# Este programa produce la serie Fibonacci
# para una cantidad n de elementos
while True:
    print("Ejemplo01 - Serie Fibonacci".center(60,'-'))
    # Declaración de variables
    n1 = 0
    n2 = 1
    cantidad = 0
    contador = 2 # Dado que se tienen los 2 primeros números
    suma = 0
    # Entrada de datos
    while True:
        try:
            cantidad = int(input("Por favor indicar la cantidad de números en la Serie:"))
            break # Interrumpe el while
        except:
            print("Error: Debe ingresar un número.")
    # Proceso principal
    print(n1)
    print(n2)
    while contador < cantidad:
        suma = n1 + n2 
        print(suma)
        n1 = n2
        n2 = suma
        contador = contador + 1
    continuar = input("¿Desea producir una nueva serie:?")
    if continuar.upper() == "S":
        continue
    else:
        break
print("Fin del Ejemplo01...")
