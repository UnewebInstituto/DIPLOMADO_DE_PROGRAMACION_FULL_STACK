Algoritmo ejemplo_21_arreglos_promedio_de_edades
	// Declaraci�n de variables
	Dimension alumnos[20]
	Dimension edades[20]
	Definir n Como Entero
	Definir i Como Entero
	Definir nombre como caracter
	Definir edad como entero
	Definir suma Como Entero
	Definir promedio como Real
	// Inicializaci�n de variables
	n <- 0
	
	Escribir "Ingrese el n�mero de estudiantes:"
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
	// C�lculo del promedio
	promedio <- suma / n 
	Escribir "El promedio de edades es:", promedio
	
FinAlgoritmo

