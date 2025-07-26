Algoritmo ejemplo_16_ciclo_para_anidado
	// Declaración de variables
	definir i Como Entero
	definir j Como Entero
	definir m Como Entero
	definir n Como Entero
	// Inicializaci?n de variables
	m <- 9
	n <- 9
	para i<-1 hasta m
	//i <- 1
	// Proceso
	//Mientras i <= m Hacer
		//j <- 1
		Escribir 'Tabla de multiplicar del ', i
		para j<-1 hasta n
		//Mientras j <= n Hacer
			Escribir i, ' x ', j, ' = ', i*j
			//j <- j + 1
		//FinMientras
			//i <- i + 1
		FinPara
		Escribir ''
	//FinMientras
	FinPara
FinAlgoritmo
