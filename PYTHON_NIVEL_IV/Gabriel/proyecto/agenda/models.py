from django.db import models

# Create your models here.
class Contacto(models.Model):
    nombre = models.CharField(max_length=80)
    apellido = models.CharField(max_length=80)
    # EmailField valida el formato y unique=True evita duplicados
    email = models.EmailField(max_length=120, unique=True)
    telefono = models.CharField(max_length=80)
    # TextField se traduce automáticamente a un textarea en formularios
    direccion = models.TextField()

    def __str__(self):
        return f"{self.nombre} {self.apellido}"