Algoritmo ejemplo_11_ciclo_repetir_repaso
	// Nota: En la estructura repetitiva Repetir
	// la condición de parada se verifica después de
	// ejecutar cualquier acción (instrucción) al menos una vez
	// Declaración de variables
	definir n Como Entero
	definir i Como Entero
	// Inicialización de variables
	n <- 5
	i <- 0
	//i <- 5 // Prueba ejecución de almenos una vez
	// Proceso principal
	Repetir
		escribir i
		i <- i + 1
	Hasta Que (i >= n)
	escribir 'Fin del algoritmo repetir'
FinAlgoritmo
