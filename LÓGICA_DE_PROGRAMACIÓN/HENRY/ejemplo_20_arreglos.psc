Algoritmo ejemplo_20_arreglos
	// Declaración de variables
	Dimension alumnos[20]
	Definir nombre como Caracter
	Definir i como entero
	// Asignación de los valores del arreglos alumnos
	alumnos[1] <- 'FRANCYS'
	alumnos[2] <- 'JESÚS'
	alumnos[3] <- 'ALVARO'
	alumnos[4] <- 'ANDY'
	alumnos[5] <- 'CARLOS'
	// Mostrar el contenido del arreglos alumnos
	escribir "Reporte de alumnos (Mientras)"
	i <- 1
	Mientras i < 6 hacer
		escribir alumnos[i]
		i <- i + 1
	FinMientras
	
	// ----
	escribir "Reporte de alumnos (Repetir)"
	i <- 1
	Repetir
		Escribir  alumnos[i]
		i <- i + 1
	Hasta Que (i > 5)
	
	
	// ----
	escribir "Reporte de alumnos (Para)"
	para i<-1 hasta 6 
		Escribir  alumnos[i]
	FinPara
	
FinAlgoritmo

