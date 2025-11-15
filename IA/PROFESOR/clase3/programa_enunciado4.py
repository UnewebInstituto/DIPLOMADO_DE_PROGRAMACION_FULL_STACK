import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Datos Históricos (Basados en el informe cualitativo y estabilizados para el gráfico)
# Demanda Potencial 1.4M (2014) -> Caída a 300K (2018) -> Recuperación a 960K (2024)
years_hist = [2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024]
demand_hist = [1200, 800, 400, 350, 300, 700, 800, 850, 900, 930, 960] # Datos en miles de Ton

# Proyección (Tasa de crecimiento estabilizada del 6% anual sobre la demanda de 960,000 Ton)
initial_demand = 960
growth_rate = 0.06
years_forecast = np.arange(2025, 2030)
demand_forecast = [initial_demand * (1 + growth_rate)**(y - 2024) for y in years_forecast]
demand_forecast = [int(d) for d in demand_forecast] # Convertir a entero

# Consolidar datos
years = years_hist + list(years_forecast)
demand_all = demand_hist + demand_forecast

# Crear el DataFrame para visualización
df = pd.DataFrame({'Año': years, 'Demanda (Miles de Ton)': demand_all})

# Generación del Gráfico
plt.figure(figsize=(12, 6))

# Histórico
plt.plot(df[df['Año'] <= 2024]['Año'], df[df['Año'] <= 2024]['Demanda (Miles de Ton)'], 
         marker='o', linestyle='-', color='skyblue', label='Consumo Histórico/Actual')

# Proyección
plt.plot(df[df['Año'] >= 2024]['Año'], df[df['Año'] >= 2024]['Demanda (Miles de Ton)'], 
         marker='o', linestyle='--', color='darkblue', label='Proyección (6% CAGR)')

# Techo potencial (1.4 Millones de Ton)
plt.axhline(y=1400, color='red', linestyle=':', label='Demanda Potencial Máxima')

# Añadir títulos y etiquetas
plt.title('Tendencia de Consumo Anual de Harina de Maíz Precocida (2014-2029)', fontsize=14)
plt.xlabel('Año', fontsize=12)
plt.ylabel('Demanda (Miles de Toneladas/Año)', fontsize=12)
plt.xticks(years, rotation=45)
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(loc='upper left')
plt.annotate(f'Demanda Actual\n960 K Ton', (2024, 960), textcoords="offset points", xytext=(-50,-30), ha='center', arrowprops=dict(arrowstyle="->", connectionstyle="arc3,rad=0.2"))
plt.tight_layout()

plt.savefig("tendencia_consumo_harina_maiz.png")