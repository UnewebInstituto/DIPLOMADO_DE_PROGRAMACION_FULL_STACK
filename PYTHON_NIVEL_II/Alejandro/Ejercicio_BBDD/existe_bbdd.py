import conexion

def verificar_bd(nombre_base_datos):
    mycursor = conexion.mydb.cursor()
    
    sql = "SHOW DATABASES LIKE %s"
    valor = (nombre_base_datos, ) 
    
    mycursor.execute(sql, valor)
    
    # Usamos fetchone() porque solo esperamos 1 resultado o ninguno
    resultado = mycursor.fetchone()
    
    if resultado:
        print(f"✅ La base de datos '{nombre_base_datos}' SÍ existe.")
        return True
    else:
        print(f"❌ La base de datos '{nombre_base_datos}' NO existe.")
        return False

# --- Ejemplo de uso ---
verificar_bd("bdpy2_alejandro")