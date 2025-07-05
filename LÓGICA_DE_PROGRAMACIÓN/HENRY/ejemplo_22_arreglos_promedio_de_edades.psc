Algoritmo ejemplo_22_arreglos_promedio_de_edades
	// Declaración de variables
	Dimension alumnos[20]
	Dimension edades[20]
	Definir n Como Entero
	Definir i Como Entero
	Definir nombre como caracter
	Definir edad como entero
	Definir suma Como Entero
	Definir promedio como Real
	Definir continuar como caracter
	// Inicialización de variables
	continuar <- "S"
	Mientras (continuar == "S" o continuar == "s") hacer
		n <- 0
	
		Escribir "Ingrese el número de estudiantes:"
		leer n
		
		suma <- 0
		i <- 1
		Mientras i <= n hacer
			escribir "NOMBRE...:"
			leer nombre
			alumnos[i] <- nombre
			escribir "EDAD.....:"
			leer edad
			edades[i] <- edad
			suma <- suma + edad
			i <- i + 1
		FinMientras
		
		Escribir "Reporte de alumnos registrados"
		i <- 1 
		Mientras (i <= n) hacer
			Escribir alumnos[i], "   ", edades[i]
			i <- i + 1
		FinMientras
		// Cálculo del promedio
		promedio <- suma / n 
		Escribir "El promedio de edades es:", promedio
		
		// Se verifica si se quiere repetir el ciclo
		Escribir "¿Desea ingresar nuevos datos (S/N):?"
		leer continuar 
	FinMientras
FinAlgoritmo

