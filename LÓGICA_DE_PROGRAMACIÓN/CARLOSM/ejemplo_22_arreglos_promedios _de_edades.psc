Algoritmo ejemplo_22_arreglos
	// 1 Solicitar el Maximo Numero de Alumnos
	// 2 Solicitar Nombre y Edad de Alumnos
	// 3 Calcular el Promedio de edades
	// 4 Generar un Listado de Nombres y Edades de los Estudiantes
	// 5 Imprimir el Promedio
	
	
	
	//Declaracion de Variables
	Dimension alumnos[20]
	Dimension edades[20]
	Definir n Como entero
	Definir i Como Entero
	Definir  nombre como caracter
	Definir edad como entero
	Definir suma como entero
	Definir promedio como real
	Definir continuar como caracter
	// Iniciacion de Varibles
	continuar <- "S"
	
	Mientras (continuar == "S" o continuar  == "s") hacer
		suma <- 0
		Escribir "Ingrese el Numero de Estudiantes:"
		leer n
		i <- 1
		Mientras i <= n Hacer
			escribir  "Nombre.....:"
			leer nombre
			alumnos[i] <- nombre
			escribir  "Edad.....:"
			leer edad
			edades[i] <- edad
			suma <- suma + edad
			i <- i + 1
		FinMientras
		
		Escribir "Reporte de Alumnos Registrados"
		i <- 1
		Mientras (i <= n) hacer
			Escribir alumnos[i], "     " edades[i]
			i <- i + 1
		Fin Mientras
		// Calculos del Promedio
		promedio <- suma / n
		Escribir "El Promedio de edades es:", promedio
		Escribir "Quieres realizar ortro calculo?  S/N:"
		leer continuar
	Fin Mientras
Fin Algoritmo
	
	
