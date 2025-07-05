//declaracion
//de funciones 
Funcion suma <- sumar(arg_n1,arg_n2)
	suma <- arg_n1 + arg_n2  
FinFuncion

Funcion resta <- restar (arg_n1,arg_n2)
	resta <- arg_n1 - arg_n2  
FinFuncion

Funcion multiplica <- multiplicar(arg_n1,arg_n2)
	multiplica <- arg_n1 * arg_n2  
FinFuncion

Funcion divide <- dividir(arg_n1,arg_n2)
	si arg_n2 == 0 entonces
		divide <-999999 //error division por cero
	SiNo
		divide <-arg_n1/arg_n2
	FinSi
FinFuncion

funcion producto <- potenciar (arg_n1, arg_n2)
	//variables privadas a la funcion
	Definir producto como entero
	definir i como entero
	//inicializacion de variables  privadas a la funcion
	producto <- 1
	i <- 0
	
	//arg_n1 es la base
	// arg_n2 es el exponente
	Mientras (i < arg_n2) hacer
		producto <- producto * arg_n1
		i<- i + 1
	FinMientras
	
FinFuncion
Algoritmo ejemplo_17_programacion_modular_calculadora_basica
	//declaracion de librerias o modulo

	//declaracion de variables 
	definir n1 como entero
	definir n2 como entero
	definir op como caracter
	definir resultado como entero
	//4 declaracion cuerpo principal del programa 
	n1 <-0
	n2 <- 0
	op <- ""
	resultado <- 0 
	
	//declaracion cuerpo principal del , 
	Escribir "calculadora basica"
	Escribir "ingrese el 1er valor"
	leer n1
	Escribir "ingrese el 2do valor"
	Leer n2
	escribir "ingrese el valor a efectuar +,-,*,/,^:"
	leer op
	Segun op
		caso "+":
			resultado <- sumar (n1,n2)
		caso "-":
			resultado <- restar (n1,n2)
		caso "*":
			resultado <- multiplicar (n1,n2)
		caso "/":
			resultado <- dividir(n1,n2)
		caso "^":
			resultado <- potenciar(n1,n2)
				
		De Otro Modo:escribir "error: operacion no valida"
	FinSegun
	escribir resultado

FinAlgoritmo
