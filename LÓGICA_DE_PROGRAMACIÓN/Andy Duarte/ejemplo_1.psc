Algoritmo ejemplo_1
	// Autor:Andy Duarte
	// Este es un ejemplo de nuestro primer algoritmo. 
	// DECLARACION DE VARIABLES 
	Definir primerNombre Como Caracter
	Definir primerApellido Como Caracter
	Definir edad Como NUMERO
	Definir estatura Como Real // con decimales
	Definir estudia Como Logico
	Definir respuesta como caracter
	//Inicializacion de variables
	estudia <- falso
	// entrada de datos
	Escribir 'ingrese su primer nombre:'
	Leer primerNombre
	Escribir 'ingrese su primer apellido:'
	Leer primerApellido
	Escribir 'ingrese su edad:'
	Leer edad
	Escribir 'ingrese su Estatura:'
	Leer estatura
	Escribir 'Usted actualmente estudia(s/n)?'
	Leer respuesta
	si respuesta =='s' o respuesta == 'S' entonces
		estudia <- verdadero
	FinSi
	// proceso: la accion a realizar consistira en 
	// incrementar el valor de la edad en 1 para
	// mostrar cuantos años cumplira para el proximo añno
	edad <- edad+1
	// salida de resultados
	Escribir primerNombre,' ',primerApellido,',de estatura ', estatura ,',el proximo año cumplira ', edad,' años'
	// se añade un condicional simple
	//Si edad<18 Entonces
		//Escribir 'Nota: Usted es menor de edad'
	//FinSi
	
	//se añade un condicional compuesto
	si edad > 18 entonces
		escribir 'NOTA: Usted es mayor de edad'
	sino 
		Escribir 'NOTA:Usted es menor de edad'
	FinSi
	//Evaluacion si la variable estudia en 
	si estudia == Verdadero entonces
		escribir 'Altualmente esta estudiando'
	sino 
		Escribir 'La persona no esta estudiando'
	FinSi
	
FinAlgoritmo

