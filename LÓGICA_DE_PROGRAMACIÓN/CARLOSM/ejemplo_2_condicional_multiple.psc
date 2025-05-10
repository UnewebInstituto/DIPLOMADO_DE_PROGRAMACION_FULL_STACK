Algoritmo ejemplo_2_condicional_multiple
	// Declaración de variables
	Definir siglas Como Caracter
	Definir resultado Como Caracter
	// Inicialización de variables
	siglas <- ''
	// Entrada de datos
	Escribir 'Por favor ingrese una de las siguientes siglas'
	Escribir 'para conocer el nombre del lenguaje'
	Escribir 'JS, PY, SQL, HTML, PHP'
	Leer siglas
	// Proceso
	siglas <- Mayusculas(siglas)
	Si siglas=='JS' Entonces
		resultado <- 'JAVASCRIPT'
	SiNo
		Si siglas=='PY' Entonces
			resultado <- 'PYTHON'
		SiNo
			Si siglas=='SQL' Entonces
				resultado <- 'STRUCTURED QUERY LANGUAJE'
			SiNo
				Si siglas=='HTML' Entonces
					resultado <- 'HYPER TEXT MARK LANGUAJE'
				SiNo
					Si siglas=='PHP' Entonces
						resultado <- 'PREPROCESSOR HYPERTEXT'
					SiNo
						resultado <- 'NO SE TIENE INFORMACIÓN'
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	// Salida al proceso
	Escribir 'El lenguaje de programación es:',resultado
FinAlgoritmo

