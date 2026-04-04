from django.shortcuts import render
from agenda.models import Contacto
from django.db import IntegrityError
# Create your views here.

def principal(request):
    return render(request, 'index.html')

def ingresar(request):
    return render(request, 'ingresar.html')

def ingresar01(request):
    tipo = 0
    mensaje = ''
    if request.method == 'POST':
        try:
            # Se obtienen los datos del formulario
            tmp_nombre = request.POST.get('nombre')
            tmp_apellido = request.POST.get('apellido')
            tmp_email = request.POST.get('email')
            tmp_telefono = request.POST.get('telefono')
            tmp_direccion = request.POST.get('direccion')
            # Se invoca al ORM
            tmp_contacto = Contacto(nombre=tmp_nombre, apellido=tmp_apellido, correo_electronico=tmp_email, telefono=tmp_telefono,direccion=tmp_direccion)
            # Guarda el contacto
            tmp_contacto.save()
            # Mensaje de completación de la tarea
            mensaje = 'Nuevo contacto almacenado con éxito'
            tipo = 1
        except IntegrityError as e:
            mensaje = 'Nuevo contacto no pudo ser almacenado por un error de integridad de datos'
            tipo = 2
            # Mensaje para la consola del sistema
            print(f"Error de integridad de datos: {e}")
        return render(request, 'ingresar.html',{'mensaje':mensaje,'tipo':tipo})
    else:
        mensaje = 'Tipo de solicitud no válido'
        tipo = 3
        return render(request, 'ingresar.html',{'mensaje':mensaje,'tipo':tipo})




