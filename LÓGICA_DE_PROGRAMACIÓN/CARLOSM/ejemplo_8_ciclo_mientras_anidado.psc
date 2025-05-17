Algoritmo Ejemplo_8_ciclo_mientras_anidado
	// Nota: En el ciclo repetitivo mientras, la condicion
	// Nota: de fin de ciclo, se evalua antes, de ejecutar cualquier
	// accion
	
	// Declaración de variables
	Definir i Como entero
	Definir j Como entero
	Definir m  Como entero
	Definir n  Como entero
	
	
	// Inicializacion de variables
	
	m <- 9
	n <- 9
	i <- 1
	
	// Proceso
		Mientras i <= m  Hacer
			j <- 1
			Escribir 'Tabla de Multiplicar'
			Mientras j <= n Hacer
				Escribir i, ' x ',j,' = ', i*j
				j <- j + 1
			FinMientras
			i <- i + 1
			Escribir ''
		Fin Mientras
		Fin Algoritmo
		