Algoritmo ejemplo_13_ciclo_repetir_anidado
	//declaracion de variables
	
	Definir i Como Entero
	definir j Como Entero
	definir m Como Entero
	definir n como entero 
	//inicializacion de variables
	
	m <- 9
	n <- 9
	i <- 1
	//proceso
	
	//mientras i <= m Hacer
	Repetir
		j <- 1
		escribir "tabla de multiplicar del", i
		//Mientras j <= n Hacer
		Repetir
			escribir i, "x", j, "=", i*j
			j<-j + 1
			//FinMientras
			hasta que (j>n)
		i <-i + 1
		//FinMientras
		hasta que(i>m)
	
FinAlgoritmo
