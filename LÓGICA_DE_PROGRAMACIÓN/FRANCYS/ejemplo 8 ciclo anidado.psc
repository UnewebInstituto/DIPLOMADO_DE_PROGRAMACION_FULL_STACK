Algoritmo ejemplo_8_ciclo_mientras_anidado
	//declaracion de variables
	
	Definir i Como Entero
	definir j Como Entero
	definir m Como Entero
	definir n como entero 
	//inicializacion de variables
	
	m <- 9
	n <- 9
	i <- 1
	//proceso
	
	mientras i <= m Hacer
		j <- 1
		escribir "tabla de multiplicar del", i
		Mientras j <= n Hacer
			Escribir i, "x", j, "=", i*j
			j<-j + 1
		FinMientras
		i <-i + 1
	FinMientras
	
FinAlgoritmo
