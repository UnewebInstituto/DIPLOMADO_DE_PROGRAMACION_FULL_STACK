Algoritmo Ejemplo_15_ciclo_para_serie_fibonacci
    // Declaración de variables
    Definir n1 Como Real
    Definir n2 Como Real
    Definir n Como Entero
    Definir suma Como Real
	
    // Inicialización de variables
	n1 <- 0
	n2 <- 0
	n <- 0
	suma <- 0
	
    escribir '1er número:'
    leer n1
    escribir '2do número:'
    leer n2
    escribir 'Cantidad de valores:'
    leer n
	
    Escribir n1
    Escribir n2
	
    // Proceso con Para
    Para i <- 2 Hasta n - 1 Hacer
        suma <- n1 + n2
        escribir suma
        n1 <- n2
        n2 <- suma
    FinPara
	
    escribir 'Fin de la serie'
FinAlgoritmo