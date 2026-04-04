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
            tmp_contacto = Contacto(nombre=tmp_nombre, apellido=tmp_apellido, email=tmp_email, telefono=tmp_telefono, direccion=tmp_direccion)
            # Guarda el contacto
            tmp_contacto.save()
            # Mensaje de completación de la tarea
            mensaje = 'Nuevo contacto almacenado con éxito'
            tipo = 1
        except IntegrityError as e:
            mensaje = 'Nuevo contacto no pudo ser almacenado por un error de integridad de datos'
            tipo = 2
            # Mensaje para la consola del sistem
            print(f"Error de integridad de dato: {e}")
        return render(request, 'ingresar.html', {'mensaje':mensaje, 'tipo':tipo})
    else:
        mensaje = 'Tipo de solicitud no válido'
        tipo = 3
        return render(request, 'ingresar.html', {'mensaje':mensaje, 'tipo':tipo})

def consultar(request):
    return render(request, 'consultar.html')

def consultar01(request):
    tipo = 0
    mensaje = ''
    tmp_nombre = ''
    tmp_apellido = ''
    tmp_email = ''
    tmp_direccion = ''
    if request.method == 'POST':
        try:
            # Se obtiene el dato del formulario
            tmp_email = request.POST.get('email')
            # Se invoca al ORM para la consulta
            tmp_contacto = Contacto.objects.get(email=tmp_email)
            # Se obtiene los valores de cada campo
            tmp_nombre = tmp_contacto.nombre
            tmp_apellido = tmp_contacto.apellido
            tmp_email = tmp_contacto.email
            tmp_telefono = tmp_contacto.telefono
            tmp_direccion = tmp_contacto.direccion
            # Mensaje de copletación
            mensaje = 'Consulta procesada con éxito'
            tipo = 1
            return render(request, 'consultar01.html',{'mensaje':mensaje,'tipo':tipo, 'nombre':tmp_nombre, 'apellido':tmp_apellido, 
            'email':tmp_email, 'telefono':tmp_telefono, 'direccion':tmp_direccion})
        except IntegrityError as e:
            mensaje = 'Error al intentar efectuar la consulta'
            tipo = 2
            # Mensaje para la consola del sistema
            print(f"Error de integridad de datos: {e}")
            return render(request, 'ingresar.html',{'mensaje':mensaje,'tipo':tipo})

def borrar(request):
    tipo = 0
    mensaje = ''
    try:
        datos = Contacto.objects.all()
        mensaje = 'Consulta procesada con éxito'
        tipo = 1
        return render(request,'borrar.html',{'mensaje':mensaje,'tipo':tipo,'datos':datos})
    except IntegrityError as e:
        mensaje = 'Error al procesar la consulta' + str(e)
        tipo = 2
        return render(request,'borrar.html',{'mensaje':mensaje,'tipo':tipo})

def borrar01(request):
    tipo = 0
    mensaje = ''
    if request.method == 'GET':
        try:
            tmp_id = request.GET.get(id)
            Contacto.objects.filter(id=tmp_id).delete()
            mensaje = 'Contacto fue borrado con éxito'
            tipoe = 1
        except IntegrityError as e:
            mensaje = 'Ocurrió un error al intentar borrar el contacto ' + str(e)
            tipo = 2
        datos = Contacto.objects.all()
        return render(request,'borrar.html',{'mensaje':mensaje,'tipo':tipo,'datos':datos})