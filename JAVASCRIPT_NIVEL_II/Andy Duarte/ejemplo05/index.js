import { fetchData } from './api.js';
import { HttpStatus } from './data.js';
// --- USO 1: Obtener una lista tipada --- 
async function obtenerResumenProductos() {
    // Definimos explícitamente el tipo genérico esperado: array de ProductoSummaryDTO 
    const response = await fetchData('products');
    if (response.status === HttpStatus.OK && response.data) {
        console.log("--- Lista de Productos (Summary DTO) ---");
        response.data.forEach(producto => {
            console.log(`ID: ${producto.id}, Nombre: ${producto.nombre}, Precio: $${producto.precio}`);
        });
    }
}
function simularCreacion(nuevoProducto) {
    console.log("\n--- Simulación de Creación ---");
    console.log(`Enviando a API: Nombre='${nuevoProducto.nombre}', Descripción='${nuevoProducto.descripcion}'`);
    console.log(`Enviando a API: Nombre='${nuevoProducto.nombre}', Descripción='${nuevoProducto.descripcion}'`);
}
obtenerResumenProductos();
const teclado = {
    nombre: "Teclado Ergonómico",
    descripcion: "Para escritura cómoda",
    precio: 85.99
};
simularCreacion(teclado);
//# sourceMappingURL=index.js.map