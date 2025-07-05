Algoritmo Ejemplo_13_CicloRepetirAnidado
	
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
	Repetir 
		J<-1 
		ESCRIBIR 'TABLA DE MULTIPLICAR DEL ', I
		
		REPETIR  
			ESCRIBIR I, 'X', J, ' = ',I*J
			J<-J +1
		HASTA QUE J > N
		I<- I+1
		ESCRIBIR ''
	hasta que I > M
	
	
FinAlgoritmo
