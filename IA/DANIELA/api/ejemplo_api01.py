from google import genai

client = genai.Client()

while True:
    pregunta = input("Hola Daniela, pregunta a Gemini:")
    response = client.models.generate_content(
        model="gemini-2.5-flash",
        contents=pregunta,
    )
    print(response.text)
    continuar = input("¿Desea seguir interactuando con la API de Gemini (S/N)?")
    if continuar.upper() == "S":
        continue
    else:
        print("Gracias por usar la API de Gemini...")
        break