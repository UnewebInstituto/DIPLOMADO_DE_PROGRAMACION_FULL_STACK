# Este programa produce la serie fibonacci
# Para una cantidad de elementos

while True:
    print("Serie Fibonacci".center(60, '-'))
    n1 = 0
    n2 = 1
    cantidad = 0
    contador = 2 # Primeros 2 numeros
    suma = 0
    while True:
        try:
            cantidad = int(input("Por favor indicar la cantidad número en la serie: "))
            break
        except ValueError: 
            print("ERROR: SE ESPERA UN NUMERO")
            
    print(n1)
    print(n2)

    for contador in range(2, cantidad):
        suma = n1 + n2
        print(suma)
        n1 = n2
        n2 = suma
    continuar = input("Desea producir una nueva serie? (S/N): ")
    if continuar.upper() == "S":
        continue
    else: 
        break
print("Fin del Ejemplo 2...")