Algoritmo ejemplo_12_ciclo_repetir_serie_fibonacci
//Declaracion de variables
	Definir n1 Como Real
	Definir n2 Como Real
	Definir n Como Entero
	definir i Como Entero
	Definir suma Como Real
	
	//Inicializacion de variables
	n1 <- 0
	n2 <- 0
	n <- 0
	i <- 2
	suma <- 0
	
	//Proceso
	Escribir '1er numero: '
	Leer n1
	Escribir '2do numero: '
	leer n2
	Escribir 'cantidad de valores: '
	leer n
	
	Escribir n1
	Escribir n2
	Repetir
		suma <- n1 + n2
		Escribir suma 
		n1 <- n2
		n2 <- suma
		i <- i + 1
		
	Hasta Que i >= n 
	Escribir 'Fin de la serie repetir. '
FinAlgoritmo
