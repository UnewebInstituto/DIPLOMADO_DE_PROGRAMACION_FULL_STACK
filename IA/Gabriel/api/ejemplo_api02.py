import os
from google import genai

# ⚠️ Asegúrate de que esta variable de entorno esté configurada.
API_KEY = os.environ.get("GEMINI_API_KEY") 

if not API_KEY:
    print("¡ERROR! La variable de entorno 'GEMINI_API_KEY' no está configurada.")
    exit()

# Pasar la clave de forma explícita al cliente
client = genai.Client(api_key=API_KEY)

response = client.models.generate_content(
    model="gemini-2.5-flash",
    contents="¿Qué Realidad Aumentada Generativa (RAG) en IA?",
)

print(response.text)