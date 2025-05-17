Algoritmo ejemplo_8_ciclo_mientras_anidado
	//Declaracion de variables
	Definir i como entero
	Definir j como entero
	Definir m como entero
	Definir n como entero
	
	//Inicializacion de variables
	m <- 9
	n <- 9
	i <- 1
	
	//Proceso
	Mientras i <= m hacer
		j <- 1
		Escribir 'Tabla de multiplicar del ', i
		Mientras j <= n Hacer
			Escribir i, ' x ', j, ' = ', i*j
			j <- j + 1
		FinMientras
		i <- i + 1
		Escribir ''
	FinMientras
	FinAlgoritmo
