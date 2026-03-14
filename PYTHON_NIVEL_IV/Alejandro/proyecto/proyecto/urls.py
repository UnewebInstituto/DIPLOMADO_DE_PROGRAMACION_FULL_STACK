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
from django.urls import path, re_path
from proyecto.views import func_hola, func_raiz, func_fecha_actual, func_horas_adelante

urlpatterns = [
    path('admin/', admin.site.urls),
    path('hola/', func_hola),
    path('raiz/', func_raiz),
    path('fecha/', func_fecha_actual),
    path('fecha/mas/<int:horas>/',func_horas_adelante)
]
