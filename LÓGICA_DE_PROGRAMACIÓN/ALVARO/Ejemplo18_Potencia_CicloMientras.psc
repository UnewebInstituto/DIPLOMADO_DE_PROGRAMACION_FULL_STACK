Algoritmo Ejemplo18_Potencia_CicloMientras
	
	definir i como entero 
	definir producto como entero 
	definir base como entero 
	definir exponente como entero
	definir continuar Como Caracter
	
	
	base <- 0
	exponente <- 0

	continuar <- 'S'

Mientras continuar == 'S' o continuar == 's' hacer	

	i <- 0
	producto <- 1
	
	escribir 'base'
	leer base 
	
	escribir 'exponente'
	leer exponente
 	
	mientras i < exponente hacer 
		producto <- producto * base 
		i <- i + 1
	FinMientras
	
	Escribir producto 
	escribir 'Usted desea calcular otra potencia, s/n?:'
	leer continuar
	
	
fin mientras	
	escribir 'fin de las potencias'
FinAlgoritmo
