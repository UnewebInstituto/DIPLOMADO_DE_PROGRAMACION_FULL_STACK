Algoritmo ejemplo_12_ciclo_repetir_serie_fibonacci
	Definir n1 Como real
	definir n2 como real
	definir n Como Entero
	definir i como entero
	definir suma como real  
	
	//inicializacion de variables
	n1 <-0
	n2 <-0
	n <-0
	suma <-0
	i <-2
	
	//proceso
    escribir"1er. numero:"
	leer n1
	Escribir "2er. numero:"
	leer n2
	Escribir "Cantidad de Valores"
	Leer n
	
	Escribir n1
	Escribir n2
	
	Repetir 
        suma <- n1 + n2
		escribir suma
		n1 <- n2
		n2 <- suma
		i <- i + 1
	hasta que (i>=n)

Escribir "fin del ciclo mientras"
FinAlgoritmo
