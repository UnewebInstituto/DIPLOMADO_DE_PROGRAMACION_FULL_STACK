// Si usas el archivo .env
require('dotenv').config(); 

const { GoogleGenAI } = require('@google/genai');

// Inicializa el cliente. 
// **Importante:** Si la variable GEMINI_API_KEY está configurada,
// la librería la leerá automáticamente sin necesidad de pasarla aquí.
const ai = new GoogleGenAI({});

/**
 * Función principal para generar contenido
 */
async function run() {
  try {
    // 1. Llamar al modelo
    const response = await ai.models.generateContent({
      model: 'gemini-2.5-flash',
      contents: "Explícame en un párrafo qué es la computación cuántica.",
    });

    // 2. Imprimir la respuesta
    console.log("Respuesta del modelo:");
    console.log(response.text);

  } catch (error) {
    console.error("Ocurrió un error al llamar a la API de Gemini:", error);
  }
}

run();