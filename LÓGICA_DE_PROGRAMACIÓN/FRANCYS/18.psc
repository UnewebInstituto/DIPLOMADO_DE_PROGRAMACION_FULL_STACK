Algoritmo ejemplo_1_ciclo_mientras_potencia
	// dedfinicion de variables

	definir i como entero
	definir producto como entero
	definir base como entero
	definir exponente como entero 
	//inicializacion de variables 
	base <- 0
	exponente <-0
	producto <-1
	i <-0
	
	continuar <-"s"
	
	Mientras (continuar =="S" o continuar == "s") hacer
	//entrada de datos 
	Escribir "base"
	leer base
	escribir "exponente"
	leer exponente
	//proceso
	Mientras (i < exponente) Hacer
		producto <- producto * base 
		i <- i+1
	FinMientras
	//salida
	Escribir"la potencia de" , base, "elevado a", exponente, "es igual"
	Escribir "¡usted desea calcular la potencia de otro numero (S/N):?"
	leer continuar
FinMientras
escribir "fin del programa potencia"
FinAlgoritmo
