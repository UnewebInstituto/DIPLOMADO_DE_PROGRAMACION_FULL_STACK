Algoritmo Ejemplo_8_ciclo_mientras_anidado
	

//declaracion de variables

Definir i Como Entero
Definir j Como Entero
Definir m Como Entero
Definir n Como Entero

// inicializacion de variables
m <- 9
n <- 9
i <- 1

//proceso
	mientras i <= m Hacer
		j <- 1
		escribir 'Tabla de multiplicar del ',i
		mientras j <=m hacer
			escribir i,'x',j,'=',i*j
			j<-j+1
		FinMientras
		i<-i+1
		escribir ''
	FinMientras
FinAlgoritmo
