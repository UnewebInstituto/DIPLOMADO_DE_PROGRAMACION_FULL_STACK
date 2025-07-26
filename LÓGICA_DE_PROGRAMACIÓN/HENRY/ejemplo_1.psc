Algoritmo ejemplo_1
	// Autor: Henry Duque
	// Este es un ejemplo de nuestro primer
	// algoritmo.
	// Declaración de variables
	Definir primerNombre Como Caracter
	Definir primerApellido Como Caracter
	Definir edad Como numero
	Definir estatura Como Real // número con decimales
	Definir estudia Como Logico
	Definir respuesta como caracter
	// Inicialización de variables
	estudia <- Falso
	// Entradas de datos
	Escribir 'Ingrese su primer Nombre:'
	Leer primerNombre
	Escribir 'Ingrese su primer Apellido:'
	Leer primerApellido
	Escribir 'Ingrese su edad:'
	Leer edad
	escribir 'Ingrese su estatura'
	leer estatura
	escribir '¿Usted actualmente estudia (S/N)?'
	leer respuesta
	si respuesta == 'S' O respuesta == 's' entonces
		estudia <- Verdadero
	FinSi
	// Proceso: La acción a realizar consistirá en
	// incrementar el valor de la edad en 1, para
	// mostrar cuántos años tendrá para el próximo año.
	edad <- edad+1
	// Salida de resultados
	Escribir primerNombre,' ',primerApellido,', de estatura ', estatura ,', el próximo año cumplirá ',edad,' años'
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
	// Evaluación si la variable estudia está en verdadero
	Si estudia == Verdadero Entonces
		escribir 'Actualmente esta estudiando'
	SiNo
		escribir 'La persona no está estudiando'
	FinSi
FinAlgoritmo

