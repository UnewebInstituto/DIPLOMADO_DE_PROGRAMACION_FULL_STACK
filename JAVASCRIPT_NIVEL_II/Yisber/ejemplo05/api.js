import { HttpStatus } from './data.js';
// --- FUNCIÓN GENÉRICA DEL CLIENTE --- 
/**
* Simula una llamada fetch a una API.
* @param endpoint El endpoint de la API.
* @returns Una promesa que resuelve a un ApiResponse<T>.
*/
export async function fetchData(endpoint) {
    console.log(`\n[API] Solicitando: ${endpoint}`);
    // Simulación de respuesta de la API 
    if (endpoint === 'products') {
        const mockData = [
            { id: 1, nombre: "Laptop", descripcion: "Portátil potente", precio: 1200, esInterno: false },
            { id: 2, nombre: "Monitor", descripcion: "Pantalla 4K", precio: 450, esInterno: true }
        ];
        // Mapeo seguro a un DTO de Resumen usando Pick 
        const summaryData = mockData.map(p => ({
            id: p.id,
            nombre: p.nombre,
            precio: p.precio
        })); // Aserción al tipo genérico de retorno T (ProductoSummaryDTO[]) 
        return { status: HttpStatus.OK, data: summaryData };
    }
    if (endpoint === 'product/new') {
        return { status: HttpStatus.NOT_FOUND, data: null, error: "Ruta de creación no implementada." };
    }
    return { status: HttpStatus.SERVER_ERROR, data: null, error: "Error de servidor simulado." };
}
//# sourceMappingURL=api.js.map