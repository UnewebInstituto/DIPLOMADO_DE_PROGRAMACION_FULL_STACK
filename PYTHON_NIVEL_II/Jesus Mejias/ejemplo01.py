"""Definir la clase Encuesta, la cual va a tener los atributos
nombre, edad, sexo, peso, estatura
la clase posee unmetodo constructor"""

class Encuesta:
  #Atributos de la clase
  nombre = ''
  edad = 0
  sexo = ''
  peso = 0
  estatura = 0

  #Métodos de la clase
  def __init__(self,argNom,argEda,argSex,argPes,argEst):
    self.nombre = argNom
    self.edad = argEda
    self.sexo = argSex
    self.peso = argPes
    self.estatura = argEst

  def setNombre(self,argNom):
      self.nombre = argNom
  def getNombre(self):
     return self.nombre
  def setEdad(self,argEda):
      self.edad = argEda
  def getEdad(self):
     return self.edad
  def setSexo(self,argSex):
      self.sexo = argSex
  def getSexo(self):
     return self.sexo
  def setPeso(self,argPes):
      self.peso = argPes
  def getPeso(self):
     return self.peso
  def setNombre(self,argEst):
      self.estatura = argEst
  def getEstatura(self):
     return self.estatura
  
lista_datos = list()
while True:
    nombre = input("Nombre:")
    edad = int(input("Edad: "))
    sexo = input("Sexo (M/F):")
    peso = float(input("Peso:"))
    estatura = float(input("Estatura: "))
    lista_datos.append(Encuesta(nombre,edad,sexo,peso,estatura))


    continuar = input("¿Ingresar un nuevo dato?(S/N)")
    if continuar.upper() == 'S':
      continue
    else:
      for datos in lista_datos:
          print(datos.getNombre(), datos.getEdad())
      print ('Fin')
      break