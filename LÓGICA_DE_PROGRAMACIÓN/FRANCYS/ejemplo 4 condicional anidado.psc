Algoritmo Condicional_anidado
	// este algoritmo permitirá la obtencion
	//de las raices de la ecuacion de 2do grado
	//o ecuacion resolvente.
	//autor:F.R
	//Fecha;17/05/2025
	

	// Declaracion de variables 
	definir a Como Real
	definir b Como Real
	definir c Como Real
	definir x1 como real 
	definir x2 Como Real
	definir sub_radical Como Real
	Definir resultado Como Caracter
	
	//inicialización de variables

	a <-0
	b <-0
	c <-0
	x1 <-0
	x2 <-0
	sub_radical <-0
	resultado <- ""
	
	escribir "calculo de la ecuacion resolvente"
	escribir "ingrese el valor de a"
	Leer a
	si a == 0 Entonces
		resultado <- "error:el valor de *a* debe ser dirente de cero"
	SiNo
		escribir "ingrese el valor de b:"
		leer b
		escribir "ingrese el valor de c:"
		leer c
		sub_radical <-b*b - 4*a*c
		si sub_radical < 0 Entonces
			resultado <- "error:el valor de la expresion sub radical no puede ejecutarse"
		SiNo
			x1 <- (-b+RC(sub_radical))/(2*a)
			x2 <- (-b-RC(sub_radical))/(2*a)
		escribir "x1:", x1, "x2:",x2
		resultado <- ""
		FinSi
		
		
	FinSi
	escribir resultado 
FinAlgoritmo
