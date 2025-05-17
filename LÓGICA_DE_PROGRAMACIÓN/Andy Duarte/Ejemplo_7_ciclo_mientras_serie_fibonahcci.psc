Algoritmo Ejemplo_7_ciclo_mientras_serie_fibonacci
	// Declaracion de variables 
	Definir n1 como real
	Definir n2 como real
	Definir n como entero
	Definir i como entero
	Definir suma como real
	
	//inicializacion de variables 
	n1 <- 0
	n2 <- 0
	n <- 0
	i <- 2
	suma <- 0
	
	//proceso 
	escribir '1er numero:'
	leer n1
	escribir '2do numero:'
	leer n2
	escribir 'cantidad de valores:'
	leer n
	
	mientras i < n Hacer
		suma <- n1 + n2 
		escribir suma
		n1 <- n2
		n2 <- suma
		i <- i + 1
	FinMientras
	escribir 'fin de la serie'
FinAlgoritmo
