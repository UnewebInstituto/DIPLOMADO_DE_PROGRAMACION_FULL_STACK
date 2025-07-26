// 1-Declaraci�n de librer�as o m�dulos

// 2-Declaraci�n de funciones
Funcion suma <- sumar(arg_n1, arg_n2) 
	suma <- arg_n1 + arg_n2
FinFuncion

Funcion resta <- restar(arg_n1, arg_n2)
	resta <- arg_n1 - arg_n2
FinFuncion

Funcion multiplica <- multiplicar(arg_n1, arg_n2)
	multiplica <- arg_n1 * arg_n2
FinFuncion

Funcion divide <- dividir(arg_n1, arg_n2)
	si arg_n2 == 0 entonces
		divide <- -999999 // Error divisi�n por cero
	SiNo
		divide <- arg_n1/arg_n2
	FinSi
finfuncion

Algoritmo ejemplo_17_programaci�n_modular_calculadora_b�sica
	// 3-Declaraci�n de variables
	Definir n1 como Entero
	Definir n2 como Entero
	Definir op como Caracter
	Definir resultado como Entero
	
	// 4-Declaraci�n cuerpo principal del programa
	n1 <- 0
	n2 <- 0
	op <- ''
	resultado <- 0
	escribir "CALCULADORA B�SICA"
	escribir "Ingrese el 1er. Valor:"
	leer n1
	escribir "Ingrese el 2do. Valor:"
	leer n2
	escribir "Ingrese la operaci�n a efectuar +, -, *, /, ^:"
	leer op
	Segun op hacer
		caso '+': 
			resultado <- sumar(n1,n2)
		caso '-': 
			resultado <- restar(n1,n2)
		caso '*': 
			resultado <- multiplicar(n1,n2)
		caso '/': 
			resultado <- dividir(n1,n2)
		//caso '^': resultado <- potencia(n1,n2)
		de otro modo: escribir 'Error: Operaci�n no v�lida'
	FinSegun
	Escribir resultado
FinAlgoritmo
