Algoritmo ejemplo_18_ciclo_mientras_potencia
	//Declaracion de variables
	Definir i Como Entero
	Definir producto Como Entero
	Definir base Como Entero
	Definir exponente Como Entero
	
	Definir continuar como caracter
	//Inicializacion de variablaes
	base <- 0
	exponente <- 0
	
	continuar <- 'S'
	
	Mientras (continuar == 'S' o continuar == 's') hacer
		producto <- 1
		i <- 0
		//Entrada de datos
		Escribir  'Base: '
		Leer base
		Escribir 'Exponente: '
		Leer exponente
     //Proceso
	 Mientras (i < exponente) hacer
		producto <- producto * base
		i <- i +1
	FinMientras
	
	//Salida
	Escribir 'La potencia de ',base, 'elevado a ',exponente, ' es igual a: ',producto
	Escribir '¿Desea calcular la potencia de otro número? (S/N) '
	Leer continuar
FinMientras
Escribir 'Fin del Algoritmo. '
FinAlgoritmo
