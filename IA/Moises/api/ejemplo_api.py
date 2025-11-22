from google import genai 
 
client = genai.Client(api_key="AIzaSyCETChRBsFSNuoAJM7Y4SOYoyRmfezqNk4") 
 
response = client.models.generate_content( 
    model="gemini-2.0-flash", 
    contents="¨Qu‚ es Realidad Aumentada Generativa (RAG) en IA?" 
) 
 
