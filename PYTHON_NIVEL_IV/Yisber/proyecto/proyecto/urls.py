"""
URL configuration for proyecto project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/6.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.urls import re_path

from django.urls import include

from proyecto.views import funcion_hola
from proyecto.views import funcion_raiz
from proyecto.views import funcion_fecha_actual
from proyecto.views import funcion_horas_adelante
from proyecto.views import funcion_fecha_actual_nueva
from proyecto.views import funcion_fecha_actual_nueva_include
urlpatterns = [
    path('admin/', admin.site.urls),
    path('agenda/', include('agenda.urls')),
    path('hola/', funcion_hola),
    path('raiz/', funcion_raiz),
    path('fecha/', funcion_fecha_actual),
    path('fecha/mas/<int:horas>/',funcion_horas_adelante),
    # Otra forma
    #re_path(r'^fecha/mas/(\d{1,2})/$', funcion_horas_adelante),
    path('fecha_actual_template/',funcion_fecha_actual_nueva),
    path('fecha_actual_include/',funcion_fecha_actual_nueva_include)
]
