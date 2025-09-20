##Este programa produce la serie fibonacci para una cantidad n de elementos
print("Ejemplo01 -  Serie Fibonacci".Center(60,'-'))
#Declaracion de variables
n1 = 0
n2 = 1
cantidad = 0
contador = 2 #Dado que se tienen los dos primeros numeros
suma = 0
#Entrada de datos
while True:
    try:
        cantidad = int(input()("Por favor indicar la cantidad de numeros en la serie:"))
        break #Interrumpe el while
    except: 
        print("Error: debe ingresar un numero")
print(n1)
print(n2)
while contador < cantidad:
    suma = n1 + n2
    print(suma)
    n1 = n2
    contador = contador + 1 