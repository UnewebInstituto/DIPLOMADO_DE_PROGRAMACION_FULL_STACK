Algoritmo Ejemplo_16_ciclo_para_anidado
    // Declaraci�n de variables
    Definir i Como Entero
    Definir j Como Entero
    Definir m Como Entero
	
    // Inicializaci�n de variables
    m <- 9
	
    // Proceso con Para anidado
    Para i <- 1 Hasta m Hacer
        escribir 'Tabla de multiplicar del ', i
        Para j <- 1 Hasta m Hacer
            escribir i, ' x ', j, ' = ', i * j
        FinPara
        escribir ''
    FinPara
FinAlgoritmo