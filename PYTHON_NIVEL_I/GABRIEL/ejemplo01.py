while True:
    print("Ejemplo01 - Serie Fibonacci".center(60,'-'))
    # declaracion de variables
    n1 = 0
    n2 = 1
    cantidad = 0
    contador = 2
    suma = 0
    #entrada de datos 
    while True:
        try: 
            cantidad = int(input("Por favor indicar la cantidad de numeros en la serie:"))
            break #Interrumpe el while
        except:
            print("Error: debe ingresar un numero.")

    # proceso principal
    print(n1)
    print(n2)
    while contador < cantidad:
            suma = n1 + n2
            n1 = n2
            n2 = suma
            contador = contador + 1
            continuar = input("¿Desea producir una nueva serie(S/N)?")
    if continuar.upper() == "S":
        continue
    else:
        break
print("Fin de ejemplo01...")

while True:
    print("Ejemplo01 - Serie Fibonacci".center(60,'-'))
    # declaracion de variables
    n1 = 0
    n2 = 1
    cantidad = 0
    contador = 2
    suma = 0
    #entrada de datos 
    while True:
        try: 
            cantidad = int(input("Por favor indicar la cantidad de numeros en la serie:"))
            break #Interrumpe el while
        except:
            print("Error: debe ingresar un numero.")

    # proceso principal
    print(n1)
    print(n2)
    while contador < cantidad:
        suma = n1 + n2
        n1 = n2
        n2 = suma
        contador = contador + 1
    continuar = input("¿Desea producir una nueva serie(S/N)?")
    if continuar.upper() == "S":
        continue
    else:
        break
print("Fin de ejemplo01...")            


































