### 🐍 Programa Python para Limpieza de Datos
import pandas as pd
import numpy as np
import io

# 1. Simulación de la lectura del archivo anexo: 'data_enunciado.txt'
# Este contenido se extrae del archivo que proporcionaste en el prompt.
csv_data = """ciudad,mes,toneladas,toneladas_de_consumo
,Jul,3675,3037
Barquisimeto,Ago,4127,3938
Caracas,Mar,2599,2609
,Jul,2748,2311
,Jul,2087,1846
Caracas,Sep,3968,3492
,Mar,13122,12520
Puerto La Cruz,Feb,3787,3443
,May,2274,2092
,Ago,12785,10433
Maracaibo,Ago,3784,3071
Valencia,Nov,1782,1838
,Dic,3866,3137
,Oct,2444,2523
Maracay,Oct,14451,13151
,Jun,3872,3510
,Dic,4108,4088
Puerto La Cruz,Nov,8110,6759
Caracas,Abr,1999,1794
,Mar,1871,1632
,Dic,8994,8417
,Mar,12061,12558
,Oct,7666,7349
Caracas,Ago,16390,16915
,Mar,1920,1954
,Feb,1892,1966
Maracaibo,Ago,16305,13914
,Jun,16523,14051
,Jul,8872,8676
,Ago,2461,2007
,Feb,15059,14463
Caracas,Jul,13297,12230
Puerto La Cruz,May,7495,7504
Valencia,Jun,3733,3079
Valencia,Nov,14035,13178
Valencia,Oct,11953,9860
Valencia,Jun,8054,6989
Maracay,Oct,17718,17453
,Oct,14394,11929
,Ago,1570,1352
Valencia,Jul,2084,1690
Valencia,Ene,1599,1509
,Nov,9785,9237
,Feb,2048,1922
,Mar,14891,13330
,May,9763,10064
Puerto La Cruz,Nov,2702,2247
,Ago,14609,12161
Maracay,Oct,17236,14046
Maracaibo,Feb,14808,12099
,Jul,4428,3962
,May,3419,2787
,Sep,2593,2498
,Jun,15755,14922
,Abr,11222,10363
,Mar,14408,12669
Barquisimeto,Oct,10311,8477
,Mar,15228,15558
,Oct,14060,13775
Caracas,Mar,11990,10909
,Dic,9501,9692
,Feb,10486,10050
,Mar,8162,7098
,May,3730,3808
Maracay,Abr,3332,3178
,Jul,4498,4246
,Dic,14999,13978
,Ene,9162,9558
Maracaibo,Oct,3541,2886
Barquisimeto,Dic,2752,2346
,Oct,14020,12279
Puerto La Cruz,Abr,4305,3828
Barquisimeto,Ene,2727,2514
Barquisimeto,Sep,3688,3042
,Mar,3553,3181
,Oct,1862,1800
,Jun,2484,2380
,Feb,3034,3179
,Nov,14843,13051
,Mar,13181,11644
,Feb,4386,4120
,Ago,9379,7677
,Abr,11835,12309
,Nov,8588,8392
,Abr,3550,2847
,Ago,14332,13438
,Ago,14445,14354
,Oct,2676,2659
,Ene,11243,10211
Puerto La Cruz,Abr,11655,11980
,Nov,13428,11387
Maracaibo,Ene,3074,2678
,Jun,11870,12462
,Nov,10051,9514
,Ene,4228,4160
,Jun,3057,2600
Valencia,Sep,2589,2453
Barquisimeto,Ene,13197,11489
,Ene,3896,4029
,May,12291,10759
[cite_start]""" # [cite: 1]

#def limpiar_y_resumir_data(csv_data):
   # """
    #Carga data CSV, elimina filas con 'ciudad' en blanco, elimina duplicados 
    #y genera un resumen de la limpieza.
    """
    try:
        # 1. Cargar el archivo
        # En un entorno real, esta línea sería: df = pd.read_csv('data_enunciado.txt')
        df = pd.read_csv(io.StringIO(csv_data))
        
        registros_originales = len(df)
        print(f"✅ Se cargaron {registros_originales} registros originales del archivo 'data_enunciado.txt'.")
        
        # --- 2. ELIMINACIÓN DE VALORES EN BLANCO (NaN / Vacíos) ---
        
        # 2.1. Preparación: Reemplazar celdas vacías ('') en 'ciudad' con NaN para que dropna las detecte
        df['ciudad'] = df['ciudad'].replace('', np.nan)
        
        # Contar registros nulos/vacíos en 'ciudad' antes de eliminar
        nulos_antes = df['ciudad'].isnull().sum()
        
        # 2.2. Eliminar filas donde 'ciudad' es NaN
        df_intermedio = df.dropna(subset=['ciudad'])
        
        nulos_eliminados = nulos_antes
        
        # --- 3. ELIMINACIÓN DE DUPLICADOS ---

        # Contar duplicados exactos en el DataFrame intermedio
        duplicados_antes = df_intermedio.duplicated().sum()
        
        # 3.1. Eliminar filas completamente duplicadas
        df_limpio = df_intermedio.drop_duplicates()
        
        duplicados_eliminados = duplicados_antes
        
        # --- 4. GENERAR RESUMEN Y GUARDAR ---
        
        registros_finales = len(df_limpio)
        registros_totales_eliminados = nulos_eliminados + duplicados_eliminados
        
        # 4.1. Guardar la data limpia en un nuevo archivo
        nombre_archivo_salida = 'data_enunciado_limpia.csv'
        df_limpio.to_csv(nombre_archivo_salida, index=False)
        
        # 4.2. Imprimir resumen
        print("\n--- 🗑️ Resumen del Proceso de Limpieza ---")
        print(f"Registros iniciales: {registros_originales}")
        print(f"Registros eliminados (Blancos en 'ciudad'): **{nulos_eliminados}**")
        print(f"Registros eliminados (Duplicados exactos): **{duplicados_eliminados}**")
        print(f"\nTotal de registros eliminados: **{registros_totales_eliminados}**")
        print(f"Registros finales en el archivo limpio: **{registros_finales}**")
        print(f"Se ha generado la copia limpia: **{nombre_archivo_salida}**")

    except Exception as e:
        print(f"❌ Ocurrió un error durante el procesamiento: {e}")

# Ejecución de la función con la data del anexo
limpiar_y_resumir_data(csv_data)
```