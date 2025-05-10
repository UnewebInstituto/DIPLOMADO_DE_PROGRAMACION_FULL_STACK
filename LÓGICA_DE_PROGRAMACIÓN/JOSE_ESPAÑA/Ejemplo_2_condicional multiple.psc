Algoritmo ejemplo_2_condicional_multiple
	// Declasracion de variables
	Definir siglas Como Caracter
	Definir resultadoi Como Caracter
	// Inicializacion de variables
	siglas <- ''
	// Entraqda de datos
	Escribir 'por favor ingrese alguna de las siguientes siglas '
	Escribir ' para conocer el nombre del lenguaje'
	Escribir 'JS, PY, SQL, HTML, PHP'
	Leer siglas
	// Proceso
	siglas <- Mayusculas(siglas)
	Si siglas=='JS' Entonces
		resultado <- 'JAVASCRIPT'
	SiNo
		Si siglas=='PY' Entonces
			resultado <- ' PYTHON'
		SiNo
			Si siglas=='SQL' Entonces
				resultado <- ' STRUCTURED QUERY LANGUAJE'
			SiNo
				Si siglas=='HTML' Entonces
					resultado <- ' HYPER TEXT MARK LANGUAJE'
				SiNo
					Si siglas=='PHP' Entonces
						resultado <- ' PREPROCESOS HYPERTEXT'
					SiNo
						resultado <- 'NO SEW TIENE INFORMACION'
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	// Generar salida
	Escribir 'EL NOMBRE DEL LENGUAJE ES: ',resultado
FinAlgoritmo

