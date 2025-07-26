Algoritmo ejemplo_1
	// Autor: Henry Duque
	// Este es un ejemplo de nuestro primer
	// algoritmo.
	// Declaración de variables
	Definir primerNombre Como Caracter
	Definir primerApellido Como Caracter
	Definir edad Como Real
	Definir estatura Como Real // con decimales
	Definir estudia Como Logico
	// Entradas de datos
	Escribir 'Ingrese su primer Nombre:'
	Leer primerNombre
	Escribir 'Ingrese su primer Apellido:'
	Leer primerApellido
	Escribir 'Ingrese su edad:'
	Leer edad
	// Proceso: La acción a realizar consistirá en
	// incrementar el valor de la edad en 1, para
	// mostrar cuántos años tendrá para el próximo año.
	edad <- edad+1
	// Salida de resultados
	Escribir primerNombre,' ',primerApellido,', el próximo año cumplirá ',edad, ' años'
	// Se añade un condicional simple
	si edad < 18 entonces
		escribir 'NOTA: Usted es menor de edad'
	FinSi
FinAlgoritmo

