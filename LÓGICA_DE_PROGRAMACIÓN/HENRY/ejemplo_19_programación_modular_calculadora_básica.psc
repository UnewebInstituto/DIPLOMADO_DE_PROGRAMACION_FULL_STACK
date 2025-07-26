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

Funcion producto <- potenciar(arg_n1, arg_n2)
	// Variables privadas a la funci�n
	Definir producto como Entero
	Definir i como Entero
	
	// Inicializaci�n de las variables privadas a la funci�n
	producto <- 1 
	i <- 0
	
	// arg_n1 es la base
	// arg_n2 es el exponente
	Mientras (i < arg_n2) Hacer
		producto <- producto * arg_n1
		i <- i + 1
	FinMientras
	
FinFuncion

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
		caso '^': 
			resultado <- potenciar(n1,n2)
		de otro modo: escribir 'Error: Operaci�n no v�lida'
	FinSegun
	Escribir resultado
FinAlgoritmo
