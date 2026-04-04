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
from agenda.views import principal, ingresar, ingresar01, consultar, consultar01, borrar, borrar01

urlpatterns = [
    path('', principal),
    path('contactos_ingresar/', ingresar),
    path('contactos_ingresar01/', ingresar01),
    path('contactos_consultar/', consultar),
    path('contactos_consultar01/', consultar01),
    path('contactos_borrar/', borrar),
    path('contactos_borrar01/', borrar01),
]
