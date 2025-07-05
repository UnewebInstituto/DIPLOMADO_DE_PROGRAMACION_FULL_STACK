// 1-Declaración de librerías o módulos

// 2-Declaración de funciones
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
		divide <- -999999 // Error división por cero
	SiNo
		divide <- arg_n1/arg_n2
	FinSi
finfuncion

Funcion producto <- potenciar(arg_n1, arg_n2)
	// Variables privadas a la función
	Definir producto como Entero
	Definir i como Entero
	
	// Inicialización de las variables privadas a la función
	producto <- 1 
	i <- 0
	
	// arg_n1 es la base
	// arg_n2 es el exponente
	Mientras (i < arg_n2) Hacer
		producto <- producto * arg_n1
		i <- i + 1
	FinMientras
	
FinFuncion

Algoritmo ejemplo_17_programación_modular_calculadora_básica
	// 3-Declaración de variables
	Definir n1 como Entero
	Definir n2 como Entero
	Definir op como Caracter
	Definir resultado como Entero
	
	// 4-Declaración cuerpo principal del programa
	n1 <- 0
	n2 <- 0
	op <- ''
	resultado <- 0
	escribir "CALCULADORA BÁSICA"
	escribir "Ingrese el 1er. Valor:"
	leer n1
	escribir "Ingrese el 2do. Valor:"
	leer n2
	escribir "Ingrese la operación a efectuar +, -, *, /, ^:"
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
		de otro modo: escribir 'Error: Operación no válida'
	FinSegun
	Escribir resultado
FinAlgoritmo
