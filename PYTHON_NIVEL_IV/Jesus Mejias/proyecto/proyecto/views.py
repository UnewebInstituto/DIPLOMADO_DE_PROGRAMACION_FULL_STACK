from django.http import HttpResponse
from datetime import datetime

def funcion_hola(request):
  return  HttpResponse("<di style='background-color:blue;color:yellow;texl-align:center;padding:20px;font-size:24px'>Hola Mundo!</div>")

def funcion_raiz(request):
  return HttpResponse("<div style='background-color:purple;color:yellow;text-align:center;padding:20px;font-size:24px'>Usted se encuentra en la raíz</div>")

def funcion_fecha_actual(request):
  ahora = datetime.datetime.now()
  respuesta = "<div style='background-color:green;color:white;text-align:center;padding:20px;font-size:24px'>Fecha y hora actual: %s</div>"
  return HttpResponse(respuesta)