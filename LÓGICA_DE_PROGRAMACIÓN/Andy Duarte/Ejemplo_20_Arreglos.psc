Algoritmo ejemplo_20_Arreglos
	//Declracion de variables 
	Dimension alumnos[20]
	definir nombre Como Caracter
	definir i como entero
	
	//Asignacion de los valores del arreglo alumnos
	alumnos[1] <- 'FRANCIS'
	alumnos[2] <- 'JESUS'
	alumnos[3] <- 'ALVARO'
	alumnos[4] <- 'ANDY'
	alumnos[5] <- 'CARLOS'
	//Mostrar el contenido del arreglo alumnos
	escribir 'Reporte de alumnos (Mientras)'
	
	i <- 1
	mientras i < 6 hacer 
		Escribir alumnos[i]
		i <- i + 1
	FinMientras
	
	escribir 'Reporte de alumnos(Repetir)'
	
	i<-0
	repetir 
		i <- i + 1
		ESCRIBIR alumnos[i]
	Hasta Que i == 6
	
	
	escribir 'Reporte de alumnos (para)'
	
	para i <- 1 hasta 6 hacer
		ESCRIBIR alumnos[i]
	FinPara
	
	
FinAlgoritmo
