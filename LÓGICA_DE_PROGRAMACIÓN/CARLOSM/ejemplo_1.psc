Algoritmo ejemplo_1
	// Autor: Henry Duque
	// Este es un ejemplo de nuestro primer
	// algoritmo.
	// Declaraci�n de variables
	Definir primerNombre Como Caracter
	Definir primerApellido Como Caracter
	Definir edad Como numero
	Definir estatura Como Real // n�mero con decimales
	Definir estudia Como Logico
	Definir respuesta como caracter
	// Inicializaci�n de variables
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
	escribir '�Usted actualmente estudia (S/N)?'
	leer respuesta
	si respuesta == 'S' O respuesta == 's' entonces
		estudia <- Verdadero
	FinSi
	// Proceso: La acci�n a realizar consistir� en
	// incrementar el valor de la edad en 1, para
	// mostrar cu�ntos a�os tendr� para el pr�ximo a�o.
	edad <- edad+1
	// Salida de resultados
	Escribir primerNombre,' ',primerApellido,', de estatura ', estatura ,', el pr�ximo a�o cumplir� ',edad,' a�os'
	// Se a�ade un condicional simple
	// si edad < 18 entonces
	// escribir 'NOTA: Usted es menor de edad'
	// FinSi
	// Se a�ade un condicional compuesto
	Si edad>17 Entonces
		Escribir 'NOTA: Usted es mayor de edad'
	SiNo
		Escribir 'NOTA: Usted es menor de edad'
	FinSi
	// Evaluaci�n si la variable estudia est� en verdadero
	Si estudia == Verdadero Entonces
		escribir 'Actualmente esta estudiando'
	SiNo
		escribir 'La persona no est� estudiando'
	FinSi
FinAlgoritmo

