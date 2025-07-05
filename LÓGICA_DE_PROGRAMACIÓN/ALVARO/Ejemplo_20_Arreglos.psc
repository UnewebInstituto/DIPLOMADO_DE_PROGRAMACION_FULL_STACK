Algoritmo Ejemplo_20_Arreglos
	//Declaracion de Variables
	
	Dimension alumnos[20] 
	definir nombre Como Caracter
	
	//Asignacion de los valores del arreglo alumnos 
	alumnos[1] <- 'Francis'
	alumnos[2] <- "Jesus" 
	alumnos[3] <- 'Alvaro'
	alumnos[4] <- 'Andy'
	alumnos[5] <- 'Carlos'
	
	//mostrar el contenido del arreglo alumnos 
	
	escribir 'Reporte de alumnos con (Mientras)'
	i <- 1
	Mientras i < 6 hacer 
		escribir alumnos[i]
		i <- i + 1
	FinMientras
	
	
	// ---- 
	escribir 'Reporte de alumnos con (repetir)' 
	i <- 1
	repetir 
		escribir alumnos[i]
		i <- i + 1
	Hasta Que i > 5
	
	
	//---
	escribir 'reporte de alumnos (para)'
	i <- 1 
	para i <- 1 hasta 6
		escribir alumnos[i]
		
	FinPara
	
	
	
	
	
	
FinAlgoritmo
