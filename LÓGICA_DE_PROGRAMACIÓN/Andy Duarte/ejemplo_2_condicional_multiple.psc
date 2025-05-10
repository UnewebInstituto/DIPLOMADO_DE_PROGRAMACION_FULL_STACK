Algoritmo ejemplo_2_condicional_multiple
	// DeclaraciOn de variables
	definir siglas Como Caracter
	definir resultado Como Caracter
	// Inicializacion de variables
	siglas <- ''
	// Entrada de datos
	escribir 'Por favor ingrese una de las siguientes siglas'
	escribir 'para conocer el nombre del lenguaje'
	escribir 'JS, PY, SQL, HTML, PHP'
	leer siglas
	// Proceso
	siglas <- Mayusculas(siglas)
	si siglas == 'JS' entonces
		resultado <- 'JAVASCRIPT'
	sino 
		si siglas == 'PY' entonces
			resultado <- 'PYTHON'
		sino
			si siglas == 'SQL' entonces
				resultado <- 'STRUCTURED QUERY LANGUAJE'
			sino 
				si siglas == 'HTML' entonces
					resultado <- 'HYPER TEXT MARK LANGUAJE'
				sino
					si siglas == 'PHP' entonces 
						resultado <- 'PREPROCESSOR HYPERTEXT'
					sino	
						resultado <- 'NO SE TIENE INFORMACION'
					fin si
				fin si
			fin si
		fin si
	fin si
	// Salida al proceso
	escribir 'El lenguaje de programacion es:', resultado
	
FinAlgoritmo
