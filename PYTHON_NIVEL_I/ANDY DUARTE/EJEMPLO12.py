import modulo_ej12

contador = 1
suma_pagos_netos = 0
deduccion_sso_empresa1 = 0
deduccion_sso_empresa2 = 0
while True:
    total_pago = 0
    modulo_ej12.inicializar()

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

    monto_bono_por_hijos = modulo_ej12.bono_por_hijos(sueldo,cantidad_hijos)
    monto_bono_por_antiguedad = modulo_ej12.bono_por_antiguedad(sueldo,fecha_ingreso)
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
# guardar datos de trabajadores en archivos
    data_trabajadores = open("./trabajadores.txt","a")
    registro= nombre+","+apellido+";"+fecha_ingreso+";"+str(sueldo)+";"+empresa+";"+str(cantidad_hijos)+";\n"
    data_trabajadores.write(registro)
    data_trabajadores.close()

    suma_pagos_netos += total_pago

    respuesta = input("¿Desea ingresar los datos de un nuevo trabajador (S/N)?")
    if respuesta.upper() == 'S':
        contador += 1
        continue
    else:
        break
print("------------------------------")
print("TOTAL PROMEDIO DE PAGOS A TRABAJADORES:{:.2F}".format(suma_pagos_netos/contador))
print("TOTAL DEDUCCIÓN SSO EMPRESA 1:{:.2f}".format(deduccion_sso_empresa1))
print("TOTAL DEDUCCIÓN SSO EMPRESA 2:{:.2f}".format(deduccion_sso_empresa2))
print("Fin del programa...")
