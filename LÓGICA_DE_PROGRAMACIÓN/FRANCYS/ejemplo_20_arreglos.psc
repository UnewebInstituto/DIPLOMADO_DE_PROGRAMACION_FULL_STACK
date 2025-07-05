Algoritmo ejemplo_20_arreglos
	//declaracion de variables
	dimension alumnos[20]
	definir nombre como caracter  
	definir i como entero
	//asignacion de los valores del arreglo alumnos
	alumnos[1] <- "FRANCYS"
	alumnos[2] <- "JESUS"
	alumnos[3] <- "ALVARO"
	alumnos[4] <- "ANDY"
	alumnos[5] <- "CARLOS"
	//mostrar el contenido del arreglo  de los alumnos
	escribir "reporte de alumnos [mientras]"
	i<- 1
	Mientras  i < 6 Hacer
		Escribir  alumnos[i]
		i<- i + 1
	FinMientras
	
	//
	Escribir"reporte de alumnos con (repetir)"
	 i<-1
	Repetir
		escribir alumnos[i]
		i<-i + 1
	Hasta Que (i > 5)
	
	//
	Escribir  "reporte  de alumnos (para"
	para i <-1 hasta 6
		Escribir alumnos[i]
	FinPara
FinAlgoritmo
