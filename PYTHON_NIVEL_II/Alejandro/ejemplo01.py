class Encuesta:
  nombre = ''
  edad = 0
  sexo = ''
  peso = 0
  estatura = 0
  
  def __init__(self, argNombre, argEdad, argSexo, argPeso, argEstatura):
    self.nombre = argNombre
    self.edad = argEdad
    self.sexo = argSexo
    self.peso = argPeso
    self.estatura = argEstatura
  
  def setNombre(self,argNombre):
    self.nombre = argNombre
  def getNombre(self):
    return self.nombre
  
  def setEdad(self,argEdad):
    self.nombre = argEdad
  def getEdad(self):
    return self.edad
  
  def setSexo(self,argSexo):
    self.nombre = argSexo
  def getSexo(self):
    return self.sexo
  
  def setPeso(self,argPeso):
    self.nombre = argPeso
  def getPeso(self):
    return self.peso
  
  def setEstatura(self,argEstatura):
    self.nombre = argEstatura
  def getEstatura(self):
    return self.estatura

lista_datos = list()
while True:
  nombre = input('NOMBRE:')
  edad = input('EDAD:')
  sexo = input('SEXO:')
  peso = input('PESO:')
  estatura = input('ESTATURA:')
  lista_datos.append(Encuesta(nombre,edad,sexo,peso,estatura))
  continuar = input("Ingresar un nuevo dato(S/N):")
  if continuar.upper() == 'S':
    continue
  else:
    for datos in lista_datos:
      print(datos.getNombre(), datos.getEdad())
    print("Fin")
    break


