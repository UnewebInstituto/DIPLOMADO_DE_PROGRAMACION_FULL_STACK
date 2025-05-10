Algoritmo ejemplo_2_condicional_multiple
	//Declaracion de variables
	Definir siglas Como Caracter
	Definir resultado Como Caracter
	//inicializacion de variables
	siglas <- ''
	
	//Entrada de datos
	Escribir 'Por favor ingrese alguna de las siguientes siglas para conocer el nombre del lenguaje'
	Escribir 'JS, PY, SQL, HTML, PHP'
	Leer siglas
	
	//proceso
	SIGLAS <- Mayusculas(siglas)
	Si siglas == 'JS' entonces
		resultado <- 'JAVASCRIPT'
	SiNo
		SI siglas == 'py' Entonces
			resultado <- 'PYTHON'
		SiNo
			
			si siglas == 'SQL' Entonces
				resultado <- 'STRUCTURED QUERY LANGUAJE'
			SiNo
				SI siglas == 'HTML' ENTONCES	
					resultado <- 'HYPER TEXT MARKUP LANGUAJE'
				SiNo
					si siglas == 'PHP' Entonces
						resultado <- 'PREPROCESSOR HYPERTEXT'
					SiNo
						resultado <- 'NO SE TIENE INFORMACION'
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	//Generar salida
	Escribir 'El nombre del lenguaje es: ', resultado
FinAlgoritmo
