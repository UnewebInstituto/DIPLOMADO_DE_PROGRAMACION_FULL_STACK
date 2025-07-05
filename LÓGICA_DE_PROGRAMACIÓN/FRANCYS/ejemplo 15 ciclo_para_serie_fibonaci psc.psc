Algoritmo ejemplo_13_ciclo_repetir_anidado
	//declaracion de variables
	
	Definir i Como Entero
	definir j Como Entero
	definir m Como Entero
	definir n como entero 
	//inicializacion de variables
	
	m <- 9
	n <- 9
	para i<-1 hasta m 
	//i <- 1
	//proceso
	
	//mientras i <= m Hacer
		//j <- 1
		
		escribir "tabla de multiplicar del", i
		para j <-1 hasta n
			//Mientras j <= n Hacer
				escribir i, "x", j, "=", i*j
				//j<-j + 1
				//FinMientras
			//i <-i + 1
			//FinMientras
		finpara
		escribir ""
	finpara	
FinAlgoritmo
	