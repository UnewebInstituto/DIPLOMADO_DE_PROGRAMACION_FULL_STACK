from django.db import models

# Create your models here.
class Contacto(models.Model):
  nombre = models.CharField(max_length=80)
  apellido = models.CharField(max_length=80)
  email = models.CharField(max_length=120)
  telefono = models.CharField(max_length=80)
  direccion = models.CharField(max_length=250)

def __str__(self):
    return f"{self.nombre} {self.apellido}"