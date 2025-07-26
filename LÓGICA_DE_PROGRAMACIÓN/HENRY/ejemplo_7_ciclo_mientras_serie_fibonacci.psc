Algoritmo ejemplo_7_ciclo_mientras_serie_fibonacci
	// Declaración de variables
	definir n1 Como real
	definir n2 Como real
	definir n Como Entero
	definir i Como Entero
	definir suma Como Real
	
	// Inicialización de variables
	n1 <- 0
	n2 <- 0
	n <- 0
	suma <- 0
	i <- 2
	
	// Proceso
	Escribir '1er. Número:'
	Leer n1
	Escribir '2do. Número:'
	Leer n2
	Escribir 'Cantidad de Valores:'
	Leer n
	
	Escribir n1
	Escribir n2
	
	Mientras i < n Hacer
		suma <- n1 + n2
		Escribir suma
		n1 <- n2
		n2 <- suma
		i <- i + 1
	FinMientras
	
	Escribir 'Fin de la serie'
FinAlgoritmo
