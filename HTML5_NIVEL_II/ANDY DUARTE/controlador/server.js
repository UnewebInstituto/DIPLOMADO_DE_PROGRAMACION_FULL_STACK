const http = require('http');
const fs = require('fs');
const path = require('path');
const querystring = require('querystring');

const PORT = 3002;
const DATA_DIR = path.join(__dirname, 'data'); // Directorio para almacenar los datos
const DATA_FILE = path.join(DATA_DIR, 'form_submissions.txt'); // Archivo plano para los datos

// Crear el directorio 'data' si no existe
if (!fs.existsSync(DATA_DIR)) {
    fs.mkdirSync(DATA_DIR);
}

const server = http.createServer((req, res) => {
    // Servir el archivo HTML
    if (req.url === '/' && req.method === 'GET') {
        fs.readFile(path.join(__dirname, 'ejemplo10.html'), (err, data) => {
            if (err) {
                res.writeHead(500, { 'Content-Type': 'text/plain' });
                res.end('Error interno del servidor al cargar el formulario.');
                return;
            }
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(data);
        });
    }
    // Procesar los datos del formulario
    else if (req.url === '/' && req.method === 'POST') {
        let body = '';
        req.on('data', chunk => {
            body += chunk.toString(); // Convierte Buffer a string
        });

        req.on('end', () => {
            const formData = querystring.parse(body); // Parsea los datos del formulario

            const { documento, numero, nombre, apellido } = formData;

            // Formatear los datos para el archivo plano
            const dataToSave = `Fecha/Hora: ${new Date().toISOString()}\n` +
                               `Cédula: ${documento}-${numero}\n` +
                               `Nombre: ${nombre}\n` +
                               `Apellido: ${apellido}\n` +
                               `----------------------------------------\n`;

            // Anexar los datos al archivo plano
            fs.appendFile(DATA_FILE, dataToSave, (err) => {
                if (err) {
                    console.error('Error al escribir en el archivo:', err);
                    res.writeHead(500, { 'Content-Type': 'text/plain' });
                    res.end('Error al guardar los datos.');
                    return;
                }
                console.log('Datos guardados exitosamente:', formData);
                res.writeHead(200, { 'Content-Type': 'text/plain' });
                res.end('¡Datos recibidos y guardados con éxito!');
            });
        });
    }
    // Manejar otras rutas/métodos
    else {
        res.writeHead(404, { 'Content-Type': 'text/plain' });
        res.end('No encontrado');
    }
});

server.listen(PORT, () => {
    console.log(`Servidor Node.js ejecutándose en http://localhost:${PORT}`);
    console.log(`Accede al formulario en http://localhost:${PORT}`);
    console.log(`Los datos se guardarán en: ${DATA_FILE}`);
});