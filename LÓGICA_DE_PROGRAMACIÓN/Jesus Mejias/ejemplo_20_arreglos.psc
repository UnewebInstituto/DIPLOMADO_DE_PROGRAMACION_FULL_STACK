Algoritmo ejemplo_20_arreglos
	//Delcaracion de variables
	Dimension alumnos[20] 
	Definir nombre Como Caracter
	Definir i como entero	
	
	//Inicializacion de variables
	i <- 1
	//ASIGNACION DE LOS VALORES DEL ARREGLO ALUMNOS
	alumnos[1] <-'Francys'
	alumnos[2] <-'Jesus'
	alumnos[3] <-'Alvaro'
	alumnos[4] <-'Andy'
	alumnos[5] <-'Carlos'
	
	//Mostrar el contenido del arreglo alumnos
	Escribir 'Reporte de alumnos (mientras)'
	Mientras i < 5 Hacer
		Escribir alumnos[i]
		i <- i + 1
	FinMientras
	
	
	Escribir 'Reporte de alumnos (repetir)'
	i <- 1
	Repetir
		Escribir alumnos[i]
		i <- i + 1
	Hasta Que i > 5
	
	
	Escribir 'Reporte de alumnos (para)'
	Para i <- 1 hasta 5 hacer
		Escribir alumnos[i]
	FinPara
	
FinAlgoritmo
