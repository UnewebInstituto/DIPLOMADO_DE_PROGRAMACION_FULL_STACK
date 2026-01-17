"""
    Definir la clase Encuesta, la cual contiene los
    siguientes atributos:
    nombre, edad, sexo, peso, estatura
    La clase posee un método constructor y métdos 
    getters y setters, para cada uno de estos atributos.
    Desarrolle un programa, donde se realice la captura de
    los datos que corresponden a tales atributos y cuando
    el usuario decida salir genere un resumen con el 
    promedio de edades, pesos y estaturas. Indicando además
    el número de hombres y mujeres encuestados.
"""
# ------------------------------------
class Encuesta:
    # Atributos de la clase
    nombre=''
    edad=0
    sexo=''
    peso=0
    estatura=0
    # Métodos de la clase
    def __init__(self,argNom,argEda,argSex,argPes,argEst):
        self.nombre=argNom
        self.edad=argEda
        self.sexo=argSex
        self.peso=argPes
        self.estatura=argEst
    def setNombre(self,argNom):
        self.nombre= argNom
    def getNombre(self):
        return self.nombre
    def setEdad(self,argEda):
        self.edad= argEda
    def getEdad(self):
        return self.edad
    def setSexo(self,argSex):
        self.sexo= argSex
    def getSexo(self):
        return self.sexo
    def setPeso(self,argPes):
        self.peso= argPes
    def getPeso(self):
        return self.peso
    def setEstatura(self,argEst):
        self.estatura= argEst
    def getEstatura(self):
        return self.estatura
# ------------------------------------
# Se define una lista vacía
lista_datos = list()
while True:
    nombre = input('NOMBRE:')
    edad = int(input('EDAD:'))
    sexo = input('SEXO (M/F):')
    peso = float(input('PESO:'))
    estatura = float(input('ESTATURA:'))
    lista_datos.append(Encuesta(nombre,edad,sexo,peso,estatura))
    continuar = input("¿Ingresar un nuevo dato(S/N):?")
    if continuar.upper() == 'S':
        continue
    else:
        for datos in lista_datos:
            print(datos.getNombre(), datos.getEdad())
        print('Fin')
        break
        

