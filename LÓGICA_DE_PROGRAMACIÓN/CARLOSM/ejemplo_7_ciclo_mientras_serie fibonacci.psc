Algoritmo Ejemplo_7_ciclo_mientras_serie_fibonacci
	// Nota: En el ciclo repetitivo mientras, la condicion
	// Nota: de fin de ciclo, se evalua antes, de ejecutar cualquier
	// accion
	
	// Declaración de variables
	Definir n1 Como real
	Definir n2 Como real
	Definir n  Como entero
	Definir i  Como entero
	Definir Suma como real
	
	// Inicializacion de variables
	
	n <- 0
	n1 <- 0
	n2 <- 0
	i <- 2
	Suma <- 0
	
	// Proceso
	
		Escribir 'Primer numero'
		leer n1
		Escribir 'Segundo numero'
		leer n2
		Escribir 'Cantidad de valores'
		leer n
		Escribir n1
		Escribir n2
		
		mientras (i<n) hacer
			Suma <- n1+n2
			Escribir Suma
			n1 <- n2
			n2 <- Suma
			i <- i+1
		Fin mientras
		Escribir 'Fin de la Serie'
	Fin algoritmo