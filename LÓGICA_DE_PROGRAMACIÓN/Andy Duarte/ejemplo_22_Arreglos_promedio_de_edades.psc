Algoritmo ejemplo_22_Arreglos_promedio_de_edades
	//Requerimientos
	//1-Solicitar el maximo numero de alumnos (limite=20)
	//2- solicitar el nombre y edad de cada alumno
	//3- calcular el promedio de edades 
	//4- calcular un listado de nombres y edades de los estudiantes 
	//5- imprimir el promedio de edades

		//Declracion de variables 
		Dimension alumnos[20]
		dimension edades[20]
		definir n como entero 
		definir i como entero
		definir nombre Como Caracter
		definir edad como entero
		definir suma Como Entero
		definir promedio como real
		DEFINIR CONTINUAR COMO CARACTER
		
		
		CONTINUAR <- 'S'
		MIENTRAS (CONTINUAR == 'S'O CONTINUAR == 's') HACER	
		 	//Inicializacion de variables
			n <- 0
			
			escribir "Ingrese el numero de estudiante:"
			leer n
			
			suma <- 0
			i <- 1
			mientras i <= n hacer
				escribir "Nombre:"
				leer nombre
				alumnos[i] <- nombre
				escribir "EDAD....:"
				leer edad 
				edades[i] <- edad
				suma <- suma + edad 
				i <- i + 1
			FinMientras
			
			escribir "Reporte de alumnos registrados"
			i <- 1
			mientras (i <= n) hacer
				escribir alumnos[i], "  ", edades[i]
				i <- i + 1
			FinMientras
			//Calculo del promedio
			promedio <- suma / n
			Escribir "El promedio de edades es: ", promedio
			ESCRIBIR "Quieres realizar otro calculo? (S/N):"
			LEER CONTINUAR
		FinMientras
FinAlgoritmo


