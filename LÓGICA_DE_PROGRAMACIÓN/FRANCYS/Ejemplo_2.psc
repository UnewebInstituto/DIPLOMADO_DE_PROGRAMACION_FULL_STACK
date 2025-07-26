Algoritmo ejemplo_2 condicional multiple
	// declaracion de variables
	Definir siglas Como Caracter
	Definir resultado como caracter
	//inicializacion de variables 
	siglas <- ""
	//entrdada de datos 
	Escribir "por favor ingrese alguna de las siguientes siglas"
	Escribir "para conocer el nombre del lenguaje"
	Escribir "JS, PY, SQL, HTML, PHP"
	Leer siglas
	
	//proceso

	siglas <- Mayusculas(siglas)
	si siglas == "JS" Entonces
		resultado <- "JAVASCRIPT"
	SiNo
		 si siglas == "PY" entonces
			 resultado <- "PYTHON"
		 SiNo
			 
			si siglas == "SQL" entonces
				resultado <- "SQLITE"
			SiNo 
				
				si siglas == "HTML" entonces
                resultado <- "HYPER TEXT  MARK LANGUAJE"
		       SiNo 
			    si siglas == "PHP" entonces
		      	resultado <- "PREPOCESS HYPERTXT"
		       Sino 
				resultado <- "NO SE TIENE INFORMACION"
			Finsi 
		F
		
	Finsi
FinSi
FinSi


	
			
			
				
			FinSi
			
	FinSi
	
FinAlgoritmo
