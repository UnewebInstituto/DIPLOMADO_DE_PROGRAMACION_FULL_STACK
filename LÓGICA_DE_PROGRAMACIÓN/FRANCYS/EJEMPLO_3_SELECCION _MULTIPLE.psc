Algoritmo EJEMPLO_3_SELECCION_MULTIPLE
	//DECLARACION DE VARIABLES
	DEFINIR SIGLAS COMO CARACTER
	DEFINIR resultado COMO CARACTER 
	
	//INICIALIZACION DE VARIABLES = VALOR DE ARRANQUE
	
	SIGLAS <- '' 
	// ENTRADA DE DATOS
	ESCRIBIR 'PORFAVOR INGRESE ALGUNA DE LAS SIGUIENTES SIGLAS'
	ESCRIBIR 'PARA CONOCER EL NOMBRE DEL LENGUAJE'
	//ESCRIBIR 'JS \N PY \N SQL \N HTML \N PHP\N'
	ESCRIBIR 'JS, PY, SQL, HTML'
	LEER SIGLAS
	SIGLAS <- Mayusculas(SIGLAS) 
	
	segun siglas hacer
	//PROCESO 
     'JS':resultado <- 'JAVASCRIPT'
     'PY' :resultado <-  'PYTHON '
     'SQL' :resultado <- 'STRUCTURED QUERY LANGUAJE' 
     'HTML':resultado <- 'HYPER TEXT MARK LANGUAJE'
      de otro modo: resultado <- 'no se tiene informacion'
  fin segun 
  escribir 'el lenguaje de programación es', resultado
  
  
 fin algoritmo
 
	