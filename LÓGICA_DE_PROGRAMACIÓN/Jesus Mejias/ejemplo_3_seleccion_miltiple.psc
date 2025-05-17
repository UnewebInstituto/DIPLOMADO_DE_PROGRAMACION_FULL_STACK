Algoritmo ejemplo_3_seleccion_miltiple
	//Declaracion de variables
	Definir siglas Como caracter
	Definir resultado Como Caracter
	//Inicializacion de variables
	siglas <- ''
	resultado <- ''
	
	//Entrada de datos
	Escribir 'Por favor ingrese alguna de las siguientes siglas para conocer el nombre del lenguaje'
	Escribir 'JS, PY, SQL, HTML, PHP'
	Leer siglas
	
	//Proceso 
	siglas <- mayusculas(siglas)
	Segun siglas Hacer
		'JS':
			 resultado <- 'Javascript'
		'PY':
			 resultado <- 'Python'
		'SQL':
			 resultado <- 'Structured Query Languaje'
		'HTML':
			resultado <- 'Hypertext Markup Languaje'
		'PHP':
			resultado <- 'Preprocessor Hypertext'
		De Otro Modo:
			resultado <- 'NO se tiene informacion'
	FinSegun
	
	//Generar salida
	Escribir 'El nombre del lenguaje es: ', resultado
FinAlgoritmo

