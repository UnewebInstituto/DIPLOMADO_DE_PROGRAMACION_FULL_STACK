Algoritmo ejemplo_1
	// Autor: Jose España
	// Este es un ejemplo de nuestro primer
	// algoritmo.
	// Declaracion de variables
	Definir primerNombre Como Caracter
	Definir primerApellido Como Caracter
	Definir edad Como numero
	Definir estatura Como Real // con decimales
	Definir estudia Como Logico
	Definir repuesta como caracter
	// Inicializacion de variable
	estudia <- Falso
	// Entradas de datos
	Escribir 'Ingrese su primer Nombre:'
	Leer primerNombre
	Escribir 'Ingrese su primer Apellido:'
	Leer primerApellido
	Escribir 'Ingrese su edad:'
	Leer edad
	Escribir 'Ingrese su estatura:'
	Leer estatura
	escribir '¿Usted actualmente estudia (S/N)?'
	leer repuesta
	si repuesta == 'S' o repuesta == 's' entonces
		estudia <- Verdadero
	FinSi
	
	// Proceso: La accion a realizar consistira en
	// incrementar el valor de la edad en 1, para
	// mostrar cuantos años tendra para el proximo año.
	edad <- edad+1
	// Salida de resultados
	Escribir primerNombre,' ',primerApellido,', de estatura ' ,estatura,', el proximo año cumplira ',edad,' años'
	// Se añade un condicional simple
	
	//si edad < 18 entonces
		//escribir 'Nota: Usted es menor de edad'
	//FinSi
	
	// Se añade un condicional compuesto
	si edad>17 Entonces
		Escribir 'Nota: Usted es mayor de edad'
	SiNo
		Escribir ' Nota: Usted es menor de edad'
		
	FinSi
	//Evaluacion si la variable estudia esta en verdadero
	si estudia == Verdadero Entonces
		escribir 'Actualmente esta estudiando'
	SiNo
		escribir 'La persona no esta estudiando'
	FinSi
	
	
FinAlgoritmo

