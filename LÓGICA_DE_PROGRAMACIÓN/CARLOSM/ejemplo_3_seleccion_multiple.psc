Algoritmo ejemplo_3_seleccion_multiple
	// Declaración de variables
	Definir siglas Como Caracter
	Definir resultado Como Caracter
	// Inicialización de variables
	siglas <- ''
	resultado <- ''
	// Entrada de datos
	Escribir 'Por favor ingrese una de las siguientes siglas'
	Escribir 'para conocer el nombre del lenguaje'
	Escribir 'JS, PY, SQL, HTML, PHP'
	Leer siglas
	// Proceso
	siglas <- Mayusculas(siglas)
	Segun siglas  Hacer
		'JS':
			resultado <- 'JAVASCRIPT'
		'PY','py','pY','Py':
			resultado <- 'PYTHON'
		'SQL':
			resultado <- 'STRUCTURED QUERY LANGUAJE'
		'HTML':
			resultado <- 'HYPER TEXT MARK LANGUAJE'
		'PHP':
			resultado <- 'PREPROCESSOR HYPERTEXT'
		De Otro Modo:
			resultado <- 'NO SE TIENE INFORMACIÓN'
	FinSegun
	Escribir 'El lenguaje de programación es:',resultado
	// Salida al proceso
FinAlgoritmo

