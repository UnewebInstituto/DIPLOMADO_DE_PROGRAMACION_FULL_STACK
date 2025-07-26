Algoritmo ejemplo_14_ciclo_para_serie_fibonacci
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
	//<- 2
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
	
	//ientras i < n Hacer
	Para i <- 2 hasta n - 1
		suma <- n1 + n2
		Escribir suma 
		n1 <- n2
		n2 <- suma
		//<- i + 1
	FinPara
	
//nMientras
	
	Escribir 'Fin de la serie'
FinAlgoritmo
