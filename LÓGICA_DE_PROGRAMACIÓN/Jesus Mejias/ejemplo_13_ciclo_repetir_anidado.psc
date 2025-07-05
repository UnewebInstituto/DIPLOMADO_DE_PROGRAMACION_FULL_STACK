Algoritmo ejemplo_13_ciclo_repetir_anidado
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
	//Mientras i <= m hacer
	Repetir
		j <- 1
		Escribir 'Tabla de multiplicar del ', i
		//Mientras j <= n Hacer
		Repetir
			Escribir i, ' x ', j, ' = ', i*j
			j <- j + 1
			//FinMientras
		Hasta Que (j > m)
		i <- i + 1
		Escribir ''
		//FinMientras
	Hasta Que (i > m)
	Escribir 'Fin del ciclo repetir. '
FinAlgoritmo
