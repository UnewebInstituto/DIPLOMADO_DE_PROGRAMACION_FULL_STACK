Algoritmo ejemplo_8_ciclo_mientras_anidado
	// Declaración de variables
	definir i Como Entero
	definir j Como Entero
	definir m Como Entero
	definir n Como Entero
	// Inicialización de variables
	m <- 9
	n <- 9
	i <- 1
	// Proceso
	Mientras i <= m Hacer
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
