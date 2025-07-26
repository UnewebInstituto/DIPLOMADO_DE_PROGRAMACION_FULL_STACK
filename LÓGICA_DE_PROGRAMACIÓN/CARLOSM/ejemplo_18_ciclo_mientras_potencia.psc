Algoritmo ejemplo_18_ciclo_mientras_potencia
	// Declaración de variables
	Definir i Como Entero
	Definir producto Como Entero
	Definir base Como Entero
	Definir exponente Como Entero
	
	Definir continuar como caracter
	// Inicialización de variables
	base <-0 
	exponente <- 0
	
	continuar <- 'S'
	
	Mientras (continuar == 'S' o continuar == 's') Hacer
		producto <- 1
		i <- 0
		
		// Entrada de datos
		Escribir 'Base:'
		leer base
		Escribir 'Exponente:'
		leer exponente
		// Proceso
		Mientras (i < exponente) Hacer
			producto <- producto * base
			i <- i + 1
		FinMientras
		// Salida
		Escribir 'La potencia de ', base, ' elevado a ', exponente, ' es igual a ', producto
		Escribir '¿Usted desea calcular la potencia de otro número (S/N):?'
		leer continuar
	fin mientras
	escribir 'Fin del programa potencia'
FinAlgoritmo
