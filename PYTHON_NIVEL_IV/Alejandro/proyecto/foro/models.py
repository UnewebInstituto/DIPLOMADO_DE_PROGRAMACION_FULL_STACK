from django.db import models

# Create your models here.
class Usuario(models.Model):
    nombre = models.CharField(max_length=80)
    apellido = models.CharField(max_length=80)
    email = models.EmailField(max_length=250, unique=True)
    clave = models.CharField(max_length=250)

    def __str__(self):
        return f" {self.id} {self.nombre} {self.apellido} {self.email} {self.clave}"
    
class Tema(models.Model):
    titulo = models.TextField()
    usuario_id = models.IntegerField()

    def __str__(self):
        return f" {self.id} {self.titulo} {self.usuario_id}"

class Comentario(models.Model):
    texto = models.TextField()
    tema_id = models.IntegerField()
    usuario_id = models.IntegerField()

    def __str__(self):
        return f" {self.id} {self.texto} {self.tema_id} {self.usuario_id}"