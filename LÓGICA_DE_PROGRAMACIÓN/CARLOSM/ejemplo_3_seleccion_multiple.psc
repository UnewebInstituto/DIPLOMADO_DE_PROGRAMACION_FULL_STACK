Algoritmo ejemplo_3_seleccion_multiple
	// Declaraci�n de variables
	Definir siglas Como Caracter
	Definir resultado Como Caracter
	// Inicializaci�n de variables
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
			resultado <- 'NO SE TIENE INFORMACI�N'
	FinSegun
	Escribir 'El lenguaje de programaci�n es:',resultado
	// Salida al proceso
FinAlgoritmo

