def inicializar():
    global nombre 
    global apellido
    global sueldo
    global fecha_ingreso
    global cantidad_hijos
    global empresa
    global monto_bono_por_hijos
    global monto_bono_por_antiguedad
    global monto_base_imponible

    nombre =''
    apellido=''
    sueldo= 0
    fecha_ingreso=''
    cantidad_hijos=0
    empresa=''
    monto_bono_por_hijos=0
    monto_bono_por_antiguedad=0
    monto_base_imponible=0



def bono_por_hijos(arg_sueldo_base, arg_cantidad_hijos):
    resultado_bono_por_hijos = arg_sueldo_base * arg_cantidad_hijos *0.05
    return resultado_bono_por_hijos

def  bono_por_antiguedad(arg_sueldo_base,arg_fecha_ingreso):
    from datetime import datetime, date
    fecha_ingreso_traducida= datetime.strptime(arg_fecha_ingreso,"%Y-%m-%d").date()
    fecha_hoy = date.today()
    resta_de_fecha= fecha_hoy - fecha_ingreso_traducida
    dias = resta_de_fecha.days
    meses = round(dias/30)
    resultado_bono_por_antiguedad= arg_sueldo_base*meses*0.01
    return resultado_bono_por_antiguedad
