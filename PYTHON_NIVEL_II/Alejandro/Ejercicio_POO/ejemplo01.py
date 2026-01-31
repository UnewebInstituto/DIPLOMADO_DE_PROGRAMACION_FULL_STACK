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
    self.edad = argEdad
  def getEdad(self):
    return self.edad
  
  def setSexo(self,argSexo):
    self.sexo = argSexo
  def getSexo(self):
    return self.sexo
  
  def setPeso(self,argPeso):
    self.peso = argPeso
  def getPeso(self):
    return self.peso
  
  def setEstatura(self,argEstatura):
    self.estatura = argEstatura
  def getEstatura(self):
    return self.estatura

lista_datos = list()
contador = 1
while True:
  nombre = input('NOMBRE:')
  edad = input('EDAD:')
  sexo = input('SEXO:')
  peso = input('PESO:')
  estatura = input('ESTATURA:')
  lista_datos.append(Encuesta(nombre,edad,sexo,peso,estatura))
  continuar = input("Ingresar un nuevo dato(S/N):")
  if continuar.upper() == 'S':
    contador += 1
    continue
  else:
    totalEdad = 0
    totalPeso = 0
    totalEstatura = 0
    for datos in lista_datos:
      print(datos.getNombre(), datos.getEdad(), datos.getSexo(), datos.getPeso(), datos.getEstatura())
      totalEdad += int(datos.getEdad())
      totalPeso += float(datos.getPeso())
      totalEstatura += float(datos.getEstatura())
    
    totalEstatura = round(totalEstatura, 2)
    print(f'Existen {contador} registros en la encuesta')
    print(f'El promedio de la Edad es: {totalEdad/contador}')
    print(f'El promedio del Peso es: {totalPeso/len(lista_datos)}')
    print(f'El promedio de la Estatura es: {totalEstatura/contador}')
    print("Fin")
    break


