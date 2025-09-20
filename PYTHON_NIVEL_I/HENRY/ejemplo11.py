def inicializar():
    # Declaración de variables globales
    global nombre
    global apellido
    global sueldo
    global fecha_ingreso
    global cantidad_hijos
    global empresa
    global monto_bono_por_hijos
    global monto_bono_por_antiguedad
    global monto_base_imponible
    # Inicialización de variables globales
    nombre = ''
    apellido = ''
    sueldo = 0
    fecha_ingreso = ''
    cantidad_hijos = 0
    empresa = ''
    monto_bono_por_hijos = 0
    monto_bono_por_antiguedad = 0
    monto_base_imponible = 0

def bono_por_hijos(arg_sueldo_base, arg_cantidad_hijos):
    resultado_bono_por_hijos = arg_sueldo_base * arg_cantidad_hijos * 0.05
    return resultado_bono_por_hijos

def bono_por_antiguedad(arg_sueldo_base, arg_fecha_ingreso):
    from datetime import datetime, date
    fecha_ingreso_traducida = datetime.strptime(arg_fecha_ingreso,"%Y-%m-%d").date()
    fecha_hoy = date.today()
    resta_de_fechas = fecha_hoy - fecha_ingreso_traducida
    dias = resta_de_fechas.days
    meses = round(dias/30)
    resultado_bono_por_antiguedad = arg_sueldo_base * meses * 0.01
    return resultado_bono_por_antiguedad

contador = 1
while True:
    deduccion_sso_empresa1 = 0
    deduccion_sso_empresa2 = 0
    total_pago = 0
    suma_pagos_netos = 0
    inicializar()
    print("Ingrese los siguientes datos:")
    while True:
        nombre = input("NOMBRE:")
        if nombre == '':
            print("Error: Debe ingresar el nombre.")
        else:
            break
    while True:
        apellido = input("APELLIDO:")
        if apellido == '':
            print("Error: Debe ingresar el apellido.")
        else:
            break
    while True:
        try:
            sueldo = eval(input("SUELDO BASE:"))
            break
        except ValueError:
            print("Error: Debe ingresar el sueldo base.")
    fecha_ingreso = input("FECHA INGRESO (aaaa-mm-dd):")
    while True:
        try:
            cantidad_hijos = int(input("CANTIDAD DE HIJOS:"))
            break
        except ValueError:
            print("Error: Debe ingresar la cantidad de hijos")
    while True:
        empresa = input("NÚMERO EMPRESA (1 o 2):")
        if empresa in ('1','2'):
            break
        else:
            print("Error: Debe ingresar 1 o 2 para el número de empresa.")

    monto_bono_por_hijos = bono_por_hijos(sueldo,cantidad_hijos)
    monto_bono_por_antiguedad = bono_por_antiguedad(sueldo,fecha_ingreso)
    monto_base_imponible = sueldo + monto_bono_por_hijos + monto_bono_por_antiguedad

    print ("TOTAL BASE IMPONIBLE:{:.2f}".format(monto_base_imponible))

    deduccion_salud = monto_base_imponible * 0.07

    if empresa == '1':
        deduccion_sso = monto_base_imponible * 0.12
        deduccion_sso_empresa1 += deduccion_sso
    else:
        deduccion_sso = monto_base_imponible * 0.114
        deduccion_sso_empresa2 += deduccion_sso

    monto_deducciones = deduccion_salud + deduccion_sso

    print ("TOTAL DEDUCCIONES:{:.2f}".format(monto_deducciones))

    total_pago = monto_base_imponible - monto_deducciones
    print ("TOTAL PAGO TRABAJADOR:{:.2f}".format(total_pago))

    suma_pagos_netos += total_pago

    respuesta = input("¿Desea ingresar los datos de un nuevo trabajador (S/N)?")
    if respuesta.upper() == 'S':
        contador += 1
        continue
    else:
        break
print("TOTAL PROMEDIO DE PAGOS A TRABAJADORES{:.2F}".format(suma_pagos_netos/contador))
print("Fin del programa...")
