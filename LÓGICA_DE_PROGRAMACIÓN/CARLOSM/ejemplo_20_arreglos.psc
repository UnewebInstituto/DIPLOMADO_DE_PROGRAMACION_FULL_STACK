Algoritmo ejemplo_20_arreglos
	//Declaracion de Variables
	Dimension alumnos[20]
	definir nobre  Como Caracter
	definir i como entero
	// Asignacion de valores del Arreglo alumnos
	alumnos[1] <- 'francys'
	alumnos[2] <- 'jesus'
	alumnos[3] <- 'alvaro'
	alumnos[4] <- 'andy'
	alumnos[5] <- 'carlos'
	//Mostrar el contenido del arreglos alumnos
	escribir "reporte de Alumnos (Mientras)"
	i <- 1 
	Mientras i < 6 hacer
		escribir alumnos[i]
		i <- i + 1
	Fin mientras
	
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
