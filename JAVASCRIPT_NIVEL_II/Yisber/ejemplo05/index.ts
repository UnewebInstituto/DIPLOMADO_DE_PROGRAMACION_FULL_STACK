// ✅ IMPORTACIONES CORRECTAS (type-only para tipos, normal para valores)
import { fetchData } from './api.js';
import type { ProductoSummaryDTO, ProductoCreateDTO } from './data.js'; // 👈 'type' para tipos
import { HttpStatus } from './data.js'; // 👈 sin 'type' para enum (es valor + tipo)


async function obtenerResumenProductos() {
  // Definimos explícitamente el tipo genérico esperado: array de ProductoSummaryDTO
  const response = await fetchData<ProductoSummaryDTO[]>('products');

  if (response.status === HttpStatus.OK && response.data) {
    console.log("--- Lista de Productos (Summary DTO) ---");
    response.data.forEach((producto: ProductoSummaryDTO) => { // 👈 tipado explícito
      console.log(`ID: ${producto.id}, Nombre: ${producto.nombre}, Precio: $${producto.precio}`);
      // console.log(producto.descripcion); // ✅ Error esperado: no existe en ProductoSummaryDTO
    });
  }
}

// --- USO 2: Simular una creación con DTO de entrada ---
function simularCreacion(nuevoProducto: ProductoCreateDTO) {
  console.log("\n--- Simulación de Creación ---");
  console.log(`Enviando a API: Nombre='${nuevoProducto.nombre}', Descripción='${nuevoProducto.descripcion}'`);
  // ✅ TypeScript protege: 'id' no está permitido en ProductoCreateDTO
}

// --- EJECUCIÓN ---
obtenerResumenProductos();

const teclado: ProductoCreateDTO = {
  nombre: "Teclado Ergonómico",
  descripcion: "Para escritura cómoda",
  precio: 85.99
};

simularCreacion(teclado);