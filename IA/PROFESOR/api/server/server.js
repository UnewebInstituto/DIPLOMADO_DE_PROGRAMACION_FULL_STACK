// server.js
// Si usas el archivo .env
require('dotenv').config(); 
// server.js (Asegúrate de que 'path' esté importado)
// ...
const path = require('path'); 
// ...

const express = require('express');
const { GoogleGenAI } = require('@google/genai');

const app = express();
const PORT = 3000;

// Inicializa el cliente de Gemini.
const ai = new GoogleGenAI({});

// Middleware para procesar JSON en las peticiones
app.use(express.json());

// 1. Ruta para servir el HTML estático (debes poner el HTML en una carpeta 'public')
// 💡 Consejo: Crea una carpeta llamada 'public' y coloca 'ejemplo_api04.html' dentro.
app.use(express.static(path.join(__dirname, 'public')));

// **********************************************
// ********* AÑADIR ESTA RUTA GET ***************
// **********************************************
// 0. Ruta Raíz GET /
app.get('/', (req, res) => {
    // Redirige al navegador para que pida el archivo HTML completo
    res.redirect('/ejemplo_api04.html');
});
// **********************************************


// 2. Ruta de la API para interactuar con Gemini
app.post('/api/gemini-query', async (req, res) => {
    // Extraer la pregunta enviada desde el formulario del frontend
    const userQuestion = req.body.pregunta;

    if (!userQuestion) {
        return res.status(400).json({ error: 'La pregunta es requerida.' });
    }

    try {
        // Llamada a la API de Gemini
        const response = await ai.models.generateContent({
            model: 'gemini-2.5-flash',
            contents: userQuestion,
        });

        // Enviar la respuesta del modelo de vuelta al frontend
        res.json({
            respuesta: response.text
        });

    } catch (error) {
        console.error("Error al llamar a la API de Gemini:", error);
        // Manejo de errores (ej. API key inválida)
        res.status(500).json({ error: 'Error interno del servidor o clave API no válida.' });
    }
});


// Iniciar el servidor
app.listen(PORT, () => {
    console.log(`Servidor Node.js escuchando en http://localhost:${PORT}`);
});