from google import genai

client = genai.Client()

response = client.models.generate_content(
    model="gemini-2.5-flash",
    contents="¿Por que el cielo es azul?"
)

print(response.text)