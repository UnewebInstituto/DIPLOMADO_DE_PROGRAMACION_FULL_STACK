Algoritmo ejemplo_21_ejemplo_promedio_edades
	//Requerimientos:
	//1.Solicitar el numero máximo de alumnos (limite = 20).
	//2.Solicitar el nombre y edad de cada alumno.
	//3.Calcular el promedio de edades.
	//4.Generar un listado de nombres y edad de los estudiantes.
	//5.Imprimir promedio de edades.
	
	//Delcaracion de variables
	Dimension alumnos[20]
	Dimension edades[20]
	Definir n como entero
	Definir i como entero
	Definir nombre como caracter
	Definir edad como entero
	Definir suma como entero
	Definir promedio como real	
	Definir continuar como caracter
	
	//Inicializacion de variables
	continuar <- 's'
	Mientras (continuar == 'S' o continuar == 's') hacer
		n <- 0

	
	
		Escribir 'Ingrese el numero de estudiantes'
		leer n
		
		suma <- 0
		i <- 1
		Mientras i <= n hacer
			Escribir 'Nombre: '
			leer nombre
			alumnos[i] <- nombre
			Escribir 'Edad: '
			leer edad
			edades[i] <- edad
			suma <- suma + edad
			i <- i + 1
		FinMientras
		
		Escribir 'Reporte de alumnos registerados: '
		i <- 1
		Mientras i < n hacer
			Escribir alumnos[i],'   ',edades[i]
			i <- i +1
		FinMientras
		
		//Calculo del promedio
		promedio <- suma / n
		Escribir 'El promedio de la suma es: ', promedio
		
		Escribir 'Usted desea ingresar nuevos datos? (S/N) '
		Leer continuar
	FinMientras
	
		FinAlgoritmo
