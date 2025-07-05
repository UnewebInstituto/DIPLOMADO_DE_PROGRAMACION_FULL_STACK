
	// 1-Declaracion de librerias o modulos
	
	//2-Declaracion de funciones
	Funcion suma <- sumar (arg_n1, arg_n2)
		suma <- arg_n1 + arg_n2
FinFuncion

Funcion resta <- restar (arg_n1, arg_n2)
	resta <- arg_n1 - arg_n2
FinFuncion

Funcion multiplica <- multiplicar (arg_n1, arg_n2)
	multiplica <- arg_n1 * arg_n2
FinFuncion

Funcion divide <- dividir (arg_n1, arg_n2)
	si arg_n2 == 0 entonces
		divide <- -999999 //Error: division por cero 
	SiNo
		divide <- arg_n1/arg_n2
	FinSi
FinFuncion
Algoritmo ejemplo_17_programacion_modular_calculadora_basica
	//3-Declaracion de variables
	Definir n1 como entero
	Definir n2 como entero
	Definir op como caracter
	Definir resultado como entero
	//4-Cuerpo principal del programa
	n1 <- 0
	n2 <- 0
	op <- ''
	resultado <- 0
	Escribir 'Calculadora Básica '
	Escribir 'Ingrese el primer valor. '
	leer n1
	Escribir 'Ingrese el segundo valor. '
	Leer n2
	Escribir 'Ingrese la operación a efectuar +, -, *, /,^: '
	Leer op 
	Segun op hacer 
		caso '+': resultado <- sumar(n1, n2)
		Caso  '-': resultado <- restar (n1, n2)
		caso '*': resultado <- multiplicar (n1, n2)
		caso '/': resultado <- dividir (n1, n2)
		//Caso: '^': resultado <- portencia (n1, n2)
			De Otro Modo: escribir 'Error: Operacion no valida '
				
		FinSegun
		Escribir 'El resultado es: ', resultado
FinAlgoritmo  
