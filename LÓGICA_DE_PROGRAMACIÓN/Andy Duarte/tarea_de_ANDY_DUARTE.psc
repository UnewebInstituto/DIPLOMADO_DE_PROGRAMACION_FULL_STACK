Algoritmo tarea
	// Declaración de variables
	definir siglas Como Caracter
	definir resultado Como Caracter
	// Inicialización de variables
	siglas <- ''
	resultado <- ''
	// Entrada de datos
	escribir 'Por favor ingrese una de las siguientes siglas'
	escribir 'para conocer el nombre del lenguaje'
	escribir 'JS, PY, SQL, HTML, PHP'
	leer siglas
	// Proceso
	
	siglas <- Mayusculas(siglas)
	segun siglas Hacer
		'JS': resultado <- 'JAVASCRIPT'
		'PY': resultado <- 'PYTHON'
		'SQL': resultado <- 'STRUCTURED QUERY LANGUAGE'
		'HTML':resultado <- 'HYPER TEXT MARKUP LANGUAGE'
		'PHP': resultado <- 'PREPROCESSOR HYPERTEXT'
		De Otro Modo:resultado <- 'NO SE TIENE INFORMACIÓN'
	FinSegun
	
	// Salida al proceso
	escribir 'El lenguaje de programación es:', resultado
	
FinAlgoritmo
