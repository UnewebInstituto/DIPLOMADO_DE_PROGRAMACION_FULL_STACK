Algoritmo ejemplo_11_ciclo_repetir_repaso
	// Nota: En la estructura repetitiva Repetir
	// la condici�n de parada se verifica despu�s de
	// ejecutar cualquier acci�n (instrucci�n) al menos una vez
	// Declaraci�n de variables
	definir n Como Entero
	definir i Como Entero
	// Inicializaci�n de variables
	n <- 5
	i <- 0
	//i <- 5 // Prueba ejecuci�n de almenos una vez
	// Proceso principal
	Repetir
		escribir i
		i <- i + 1
	Hasta Que (i >= n)
	escribir 'Fin del algoritmo repetir'
FinAlgoritmo
