\

# este programa produce la serie fibonacci para una cantidad N de elementos 

while True:
        
    print("Ejemplo02 - Serie Fibonacci".center(60,'-'))
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
    for contador in range(2,cantidad)
            suma = n1 + n2
            print(suma)
            n1 = n2
            n2 = suma

    continuar = input("¿Desea producir una nueva serie(S/N)?")
    if continuar.upper() == "S":
        continue
    else:
        break
print("Fin de ejemplo02...")            

































