Algoritmo ejemplo_1
	//Autor. Francys R
	// Ejemplo del primer algoritmo
	//algoritmo.
	//
	//Declaracion de variables
	Definir primerNombre como Caracter
	Definir primerApellido Como Caracter
	Definir edad como numero // con decimales
	definir estatura como real // numeor decimal
	Definir estudia como logico 
	Definir  respuesta como caracter
	//inicializacion de variable
	estudia <-falso
	
	// entrada de datos 
	Escribir  "ingrese su primerNombre:"
	Leer  primerNombre
	Escribir  "ingrese su primerApellido:"
	leer primerApellido
	Escribir "ingrese su edad:"
	Leer edad
	Escribir "ingrese su estatura:"
	Leer estatura
	Escribir "Usted actualmente estudia (S/N)?"
	Leer respuesta
	Si (respuesta  == "S" o respuesta == "s") Entonces
		estudia <- verdadero
	FinSi

	
	// Proceso:la accion a realizar consistira en
	//incrementar el valor de la edad en 1. para
	//mostrar cuantos años tendrá el próximo año.
	edad <- edad + 1
	// Salida de resultados
	escribir  primerNombre, '', primerApellido, ' de estatura ', estatura ,', el proximo año cumplirá ', edad,  ' años'
	// se añdade un condiiconal compuesto
	si edad > 17 Entonces 
		Escribir 'NOTA: Usted es mayor de edad'
	SiNo
		Escribir 'NOTA: Usted es menor de edad'
	FinSi
	// evaluacion si la variable estudia está en verdadero 
	
	si estudia ==  Verdadero entonces
		Escribir "Actualmente esta estudiando"
	SiNo
		Escribir "No esta estudiando"
	FinSi
	
	
FinAlgoritmo
