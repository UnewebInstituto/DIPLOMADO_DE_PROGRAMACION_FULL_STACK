Algoritmo ejemplo_arreglos_promedio_de_edades
	//solcitar el amximo d enumero de alumno limite 20
	//solicitar el nombre y edad de cada alumno
	//calcular el promedio de edades 
	//generar un listadp de nombres y edades de los estudiantes
	//imprimir el promedio de edades 
	dimension alumnos[20]
	dimension edades[20]
	definir n como entero
	definir i como entero
	definir nombre como caracter
	definir edad Como Entero
	definir suma como entero
	definir promedio como real 
	definir continuar como caracter
	//inicializacion de variables
	continuar <- "S"
	Mientras (continuar == "S" O continuar == "s") hacer
		
		n <- 21
		mientras (n  < 1 o n > 20) Hacer
			escribir "ingrese el numero de estudiantes( minimo 1/ maximo 20)"
			leer n
		finmientras
		suma <- 0
		i <-1
		
		mientras i <= n hacer 
			escribir "nombre...:"
			leer nombre
			alumnos[i] <- nombre
			escribir "edad...:"
			leer edad 
			edades[i] <- edad 
			suma <- suma+ edad 
			i <- i + 1
		FinMientras
		Escribir "reporte de alumnos resgistrados"
		i <- 1
		Mientras (i <= n) Hacer
			escribir alumnos[i], "    ", edades[i]
			i<- i + 1
		FinMientras
		//calculo del promedio
		promedio <- suma / n
		Escribir "el promedio de edades es:", promedio
		
		//se verifica si se quiere repetir el ciclo
		Escribir "¿desea ingresar nuevos datos (S/N:?"
		LEER continuar
				FinMientras 
			
			FinAlgoritmo
