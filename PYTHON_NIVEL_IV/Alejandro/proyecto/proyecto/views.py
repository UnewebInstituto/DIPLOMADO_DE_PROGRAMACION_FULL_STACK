from django.http import HttpResponse, Http404
import datetime

def func_hola(request):
  return HttpResponse("<div style='background-color:blue;color:yellow;text-align:center;padding:20px;font-size:24px'>Hola estimados alumnos de Uneweb</div>")

def func_raiz(request):
  return HttpResponse("<div style='background-color:purple;color:yellow;text-align:center;padding:20px;font-size:24px'>Usted se encuentra en la raiz</div>")

def func_fecha_actual(request):
  ahora = datetime.datetime.now()
  respuesta = f"<div style='background-color:green;color:white;text-align:center;padding:20px;font-size:24px'>Fecha y hora actual: {ahora}</div>"
  return HttpResponse(respuesta)

def func_horas_adelante(request, horas):
  try:
    offset = int(horas)
  except: 
    raise Http404()
  dt = datetime.datetime.now() + datetime.timedelta(hours=offset)
  respuesta = f"<div style='background-color:orange;color:black;text-align:center;padding:20px;font-size:24px'>En {offset} hora (s) será {dt}</div>"
  return HttpResponse(respuesta)