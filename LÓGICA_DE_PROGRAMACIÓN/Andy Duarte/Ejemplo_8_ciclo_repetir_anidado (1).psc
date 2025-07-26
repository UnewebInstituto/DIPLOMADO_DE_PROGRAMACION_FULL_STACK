Algoritmo Ejemplo_8_ciclo_repetir_anidado
    // Declaración de variables
    Definir i Como Entero
    Definir j Como Entero
    Definir m Como Entero
	
    // Inicialización de variables
    m <- 9
    i <- 1
	
    // Proceso con Repetir anidado
    Repetir
        escribir 'Tabla de multiplicar del ', i
        j <- 1
        Repetir
            escribir i, ' x ', j, ' = ', i * j
            j <- j + 1
        Hasta Que j > m
        escribir ''
        i <- i + 1
    Hasta Que i > m
FinAlgoritmo