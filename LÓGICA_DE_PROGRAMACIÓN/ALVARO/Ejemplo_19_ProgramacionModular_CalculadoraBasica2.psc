// Ejemplo_19_ProgramacionModular_CalculadoraBasica2	


//2. Declaracion de Funciones
	Funcion suma<- sumar (arg_n1,arg_n2)
		suma <- arg_n1 + arg_n2
FinFuncion

Funcion resta<- restar (arg_n1,arg_n2)
	resta <- arg_n1 - arg_n2
FinFuncion

Funcion multiplica <- multiplicar (arg_n1,arg_n2)
	multiplica <- arg_n1 * arg_n2
FinFuncion

Funcion divide<- dividir (arg_n1,arg_n2)
	
	si arg_n2==0 entonces 
		divide <- -999999 //error de division por cero
	sino
		divide <- arg_n1 / arg_n2		
	FinSi
	
	
FinFuncion

funcion producto <- potencia  (arg_n1, arg_n2)
	//Variables privadas a la funcion 
	definir producto como entero 
	definir i como entero 
	
	//inicializacion de variables privadas
	
	i <- 0
	producto <- 1
	
	//arg_n1 es la base 
	// arg_n2 es el xponente
	
	Mientras  (i < arg_n2) hacer 
		producto <- producto * arg_n1
		i <- i + 1
	FinMientras
	
FinFuncion

Algoritmo Ejemplo_19_ProgramacionModular_CalculadoraBasica2
	
	//Declaracion de Librerias o modulos
	
	//3. Declaracion de Varaibles
	definir n1 como entero
	definir n2 como entero
	definir op como caracter
	definir resultado como entero
	
	
	//4.Declaracion Cuerpo Principal del Programa
	
	resultado <- 0
	
	Escribir 'Calculadora Basica'
	
	Escribir'ingrese el primer valor'
	leer n1
	
	Escribir'ingrese el segundo valor'
	leer n2
	
	Escribir 'escribir la operacion a efectuar +,-,*,/,^:'
	leer op
	
	
	
	Segun op hacer
		caso '+': resultado <- sumar (n1,n2)
		Caso '-': resultado <- restar (n1,n2)
		Caso '*': resultado <- multiplicar (n1,n2)
		caso '/': resultado <- dividir (n1,n2) 
		caso '^': resultado <- potencia (n1,n2)	
		de otro modo: escribir 'operacion no valida'
			
	FinSegun
	
	Escribir resultado 
FinAlgoritmo
