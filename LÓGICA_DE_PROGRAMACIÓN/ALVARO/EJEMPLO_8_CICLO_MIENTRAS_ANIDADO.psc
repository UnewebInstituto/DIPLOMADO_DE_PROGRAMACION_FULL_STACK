Algoritmo EJEMPLO_8_CICLO_MIENTRAS_ANIDADO
	
	//DECLARACION DE VARIABLES
	DEFINIR I Como Entero
	DEFINIR J COMO ENTERO 
	DEFINIR M Como Entero
	DEFINIR N Como Entero
	
	//INICIALIZACION DE VARIABLES
	
	M<-9
	N<-9
	
	I<-1
	
	//PROCESO
	MIENTRAS I <= M HACER 
		J<-1 
		ESCRIBIR 'TABLA DE MULTIPLICAR DEL ', I
		MIENTRAS J <=N HACER 
			ESCRIBIR I, 'X', J, ' = ',I*J
			J<-J +1
		FinMientras
		I<- I+1
		ESCRIBIR ''
	FinMientras
	
FinAlgoritmo
