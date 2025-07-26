Algoritmo ejemplo_seleccion_miltiple
	//Declaracion de variables
	Definir lenguajes Como caracter
	Definir resultado Como Caracter
	//Inicializacion de variables
	lenguajes <- ''
	resultado <- ''
	//Entrada de datos
	Escribir 'Por favor ingrese alguna de las siguientes siglas para conocer el nombre del lenguaje'
	Escribir 'JS, PY, SQL, HTML, PHP'
	Leer lenguajes
	
	//Proceso 
	Segun lenguajes Hacer
		'JS':
			 resultado = 'Javascript'
		'PY':
			 resultado = 'Python'
		'SQL':
			 resultado = 'Structured Query Languaje'
		'HTML':
			resultado = 'Hypertext Markup Languaje'
		'PHP':
			resultado = 'Preprocessor Hypertext'
		De Otro Modo:
			resultado = 'NO se tiene informacion'
	Fin Segun
	//Generar salida
	Escribir 'El nombre del lenguaje es: ', resultado
FinAlgoritmo

