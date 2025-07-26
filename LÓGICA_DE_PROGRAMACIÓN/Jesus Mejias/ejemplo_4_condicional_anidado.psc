Algoritmo ejemplo_4_condicional_anidado
	//este algoritmo permitirá obtener las raices de la ecuacion de segundo grado
	//Autor: Jesus Mejias.
	//fecha: 17/05/2025
	
	//Declaracion de variables
	Definir a Como real	
	Definir b Como Real
	Definir c Como Real
	Definir x1 Como Real
	Definir x2 Como Real
	Definir sub_radical Como Real
	Definir resultado como caracter
	
	//Inicializacion de variables
	a <- 0
	b <- 0
	c <- 0
	x1 <- 0
	x2 <- 0
	sub_radical <- 0
	resultado <- ''
	
	Escribir 'Calculo de la ecuacion resolvente'
	Escribir 'Ingrese el valor de a: '
	leer a
	
	Si a == 0
		resultado <- 'ERROR: el valor de *a* debe ser diferente a cero'
	SiNo 
		Escribir 'Ingrese el valor de b: '
		leer b
		Escribir 'Ingrese el valor de c: '
		leer c
		
		sub_radical <- b*b - 4*a*c
		Si sub_radical < 0 Entonces
			resultado <- 'ERROR: El valor de la expresion sub radical no puede ser menor a cero'
		SiNo
			x1 <- (-b+RC(sub_radical))/(2*a)
			x2 <- (-b-RC(sub_radical))/(2*a)
			Escribir 'x1: ', x1, 'x2: ', x2
			resultado <- ''
		FinSi
		
	FinSi
	Escribir resultado
FinAlgoritmo
