Algoritmo Ejemplo_4_condicional_anidado
	// Este algoritmo permitirá la obtención
	// de las raíces de la ecuación de 2do. Grado
	// o ecuación resolvente.
	// Autor: Henry Duque.
	// Fecha: 17-05-2025
	
	// Declaración de variables
	Definir a Como Real
	Definir b Como Real
	Definir c Como Real
	Definir x1 Como Real
	Definir x2 Como Real
	Definir sub_radical Como Real
	Definir resultado Como Caracter
	
	// Inicialización de variables
	a <- 0 
	b <- 0
	c <- 0
	x1 <- 0
	x2 <- 0
	sub_radical <- 0
	resultado <- ''
	
	escribir 'CÁLCULO DE LA ECUACIÓN RESOLVENTE'
	escribir 'Ingrese el valor de a:'
	Leer a
	si a == 0 entonces
		resultado <- 'ERROR: El valor de *a* debe ser diferente de cero'
	sino 
		escribir 'Ingrese el valor de b:'
		Leer b
		escribir 'Ingrese el valor de c:'
		Leer c
		sub_radical <- b*b - 4*a*c
		si sub_radical < 0 Entonces
			resultado <- 'ERROR: El valor de la expresión sub radical no puede ser negativo'
		SiNo
			x1 <- (-b+RC(sub_radical))/(2*a)
			x2 <- (-b-RC(sub_radical))/(2*a)
			// Equivalente a
			// x1 <- (-b+(sub_radical)^(1/2))/(2*a)
			// x2 <- (-b-(sub_radical)^(1/2))/(2*a)
			
			escribir 'x1:', x1, ',x2:', x2
			resultado <- ''
		FinSi
	FinSi
	escribir resultado
FinAlgoritmo
