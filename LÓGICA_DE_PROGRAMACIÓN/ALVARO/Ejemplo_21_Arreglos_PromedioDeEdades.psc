Algoritmo Ejemplo_21_Arreglos_PromedioDeEdadesi
	
	//Requerimiento:
	// 	1.Solicitar el maximo numero de alumnos (limite = 20)
	//	2.Solicitar el nombre y edad de cada alumno 
	//	3.Calcular el promedio de edades
	//	4.Generar un listado de nombres y edades de los estudiantes
	//	5.Imprimir el promedio de edades 
	
	//Declaracion de Variables
	Dimension alumnos[20] 
	dimension edades[20]
	definir n como entero 
	definir i como entero 
	definir nombre como caracter 
	definir edad como entero 
	definir suma como entero 
	definir promedio Como Real
	//inciializacion de variables
	n <- 0	
	 
	
	Escribir 'Ingrese el numero de estudiantes'
	leer n
	suma <- 0
	i <- 1
	
	Mientras i <= n hacer
		escribir 'Nombre'
		leer nombre
		alumnos[i] <- nombre
		
		Escribir 'Edad'
		leer edad
		edades[i] <- edad
		
		suma <- suma + edad 
		i <- i + 1
	FinMientras
	Escribir 'Reporte de Alumnos Registrados'
	
	i <- 1 
	Mientras (i <= n) hacer
	
		escribir alumnos[i], ' ', edades[i]
		i <- i + 1
		
	FinMientras
	
	//Calculo de Promedio 
	promedio <- suma / n
	Escribir 'El promedio de edades es:', promedio
	
FinAlgoritmo
