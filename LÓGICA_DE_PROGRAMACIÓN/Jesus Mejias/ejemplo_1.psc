Algoritmo ejempo_1
	//Autor: Jesus Mejias
	//Este es un ejemplo del primer algoritmo
	//
	//Declaracion de variables
	definir primerNombre como caracter
	Definir primerApellido como caracter
	Definir edad como real
	Definir estatura como real
	Definir estudia como logica
	Definir respuesta como caracter
	//Inicializacion de variables
	estudia <-falso
	//Entradas de datos
	escribir 'Ingrese su primer nombre'
	Leer primerNombre
	Escribir 'Ingrese su primer apellido'
	Leer primerApellido
	Escribir 'Ingrese su edad'
	leer edad
	Escribir 'Ingrese su estatura'
	Leer estatura
	Escribir '¿Usted actualmente estudia (S/N)?'
	leer respuesta
	si respuesta == 'S' o respuesta == 's' entonces
		estudia <- verdadero
	FinSi
	//proceso: La accion a realizar consistira en 
	//incrementar el valor de la edad por 1 
	//para mostrar cuantos años tendra el proximo año
	edad <- edad + 1
	
	//salida de resultaods
	escribir primerNombre, ' ', primerApellido, ' de estatura ', estatura ,' el proximo año cumplira ', edad, ' años'
	//se añade condicional simple	
//si	edad < 18	Entonces
//scribir 'NOTA: Usted es menor de edad'
//FinSi
	//se añade condicional compuesto
	si edad > 17 Entonces
		Escribir  'NOTA: Usted es mayor de edad'
	SiNo
		Escribir 'NOTA: Usted es menor de edad'
	FinSi
	//Evaluacion si la variable estudia es verdadero
	si estudia == Verdadero Entonces
		
		Escribir 'Actualmente esta estudiando'
	SiNo
		Escribir 'La persona no esta estudiando'
	FinSi
FinAlgoritmo
