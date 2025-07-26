Algoritmo EJEMPLO_1
	// AUTOR: ALVARO HERNADNEZ
	// EJEMPLO DE NUESTRO PRIMER ALGORITMO
	// Declaraacion de Variables
	Definir primerNombre Como Caracter
	Definir primerAperllido Como Caracter
	Definir edad Como Real
	Definir estatura Como Real // con decimales
	Definir estudia Como Logico
	Definir respuesta como caracter
	
	//Inicializacion de Variables
	estudia <- falso
	
	
	// Entrada de datos
	Escribir 'Ingrese su primer nombre:'
	Leer primerNombre
	Escribir 'Ingrese su primer apellido:'
	Leer primerApellido
	Escribir 'Ingrese edad:'
	Leer edad
	escribir 'Ingrese su estatura'
	leer estatura
	escribir '¿Usted actualmente estudia? S/N'
	leer respuesta 
	si respuesta == 'S' o respuesta == 's' entonces
		estudia <- verdadero 
		
		
	FinSi
	// Proceso La accion a realizar consistira en incrementar el valor de la edad en 1
	// para mostar cuantos años tendra 
	// el años proximo
	edad <- edad+1
	// salida de resultados
	Escribir primerNombre,' ',primerApellido,', de estatura ' , estatura,' , el proximo año cumplira ',edad,' ','años'
	// Se añade un condicional simple
	// si edad < 18 entonces 
	// escribir 'NOTA: Usted es menor de edad'
	// FinSi
	// Se añade un condicional compuesto
	Si edad>17 Entonces
		Escribir 'NOTA: Usted es mayor de edad'
	SiNo
		Escribir 'NOTA: Usted es menor de edad'
		
	FinSi
	//evaluacion si la variable estudia 
	
	si estudia == verdadero entonces
		escribir 'actualmente esta estudiando'
	sino 
		escribir 'no esta estudiando' 
	FinSi
	
FinAlgoritmo

