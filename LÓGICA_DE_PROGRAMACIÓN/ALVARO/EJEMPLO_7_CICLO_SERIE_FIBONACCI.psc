Algoritmo EJEMPLO_7_CICLO_MIENTRAS_SERIE_FIBONACCI
	
	//DECLARACION DE VARIABLES
	
	DEFINIR N1 COMO REAL
	DEFINIR N2 COMO REAL
	DEFINIR N Como Entero
	DEFINIR I COMO ENTERO 
	DEFINIR SUMA Como Real
	
	//INICIALIZACION DE VARIABLES
	N1<-0
	N2<-0
	N<-0
	I<-2
	SUMA<-0
	
	//PROCESO
	
	ESCRIBIR 'PRIMER NUMERO:'
	LEER N1
	ESCRIBIR 'SEGUNDO NUMERO:'
	LEER N2
	ESCRIBIR 'CANTIDAD DE VALORES:'
	LEER N 
	
	ESCRIBIR N1
	ESCRIBIR N2
	
	Repetir
		//I<N HACER
		SUMA<- N1 + N2
		ESCRIBIR SUMA
		N1<-N2
		N2<-SUMA
		I<- I+1
	Hasta Que (i>=n)
	
	
	ESCRIBIR 'FIN DEL LA SERIE'
	
FinAlgoritmo
