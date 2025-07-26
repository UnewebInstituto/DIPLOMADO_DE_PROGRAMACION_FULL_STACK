Algoritmo ejemplo_4_condicional_anidado
	// Este algoritmo permitira la obtencion
	//de las raices de la ecuacion de 2do. grado
	//o ecuacion resolvente
	// Autor: ANDY DUARTE
	//FECHA:17-05-2025
	
	//Declaracion de variables
	definir a Como Real
	definir b Como Real
	definir c Como Real
	definir x1 Como Real
	definir x2 Como Real
	definir sub_radical Como Real
	definir resultado como caracter
	
	//inicializacion de variables
	a <- 0
	b <- 0
	c <- 0
	x1 <- 0
	x2 <- 0
	sub_radical <- 0
	resultado <- ''
	
	escribir 'CALCULO DE LA ECUACION RESOLVENTE'
	escribir 'INGRESE EL VALOR DE A:'
	leer a
	si a == 0 entonces
		resultado <- 'ERROR: EL VALOR DE *a* debe ser diferente de cero'
	sino
		escribir 'INGRESE EL VALOR DE b:'
		leer b
		escribir 'INGRESE EL VALOR DE c:'
		leer c
		sub_radical <- b*b - 4*a*c
		si sub_radical < 0 Entonces
			resultado <- 'ERROR: El valor de la expresion sub radical no puede ser negativo'
		sino 
			x1 <- (-b+RC(sub_radical))/(2*a)
			X2 <- (-b-RC(sub_radical))/(2*a)
			ESCRIBIR  'X1:', x1, ',X2:',x2
			resultado <- ''
		FinSi
	FinSi
	Escribir resultado
FinAlgoritmo
