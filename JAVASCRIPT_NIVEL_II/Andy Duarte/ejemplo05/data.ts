 
// --- TIPO BASE --- 
export interface Producto { 
    id: number; 
    nombre: string; 
    descripcion: string; 
    precio: number; 
    // Propiedad interna que no debe salir al exterior 
    esInterno: boolean;  
} 

// --- TIPOS DE UTILIDAD (DTOs) --- 
 
// DTO de Creación: Omite el 'id' (lo genera el servidor) y 'esInterno' (es un detalle interno). 
export type ProductoCreateDTO = Omit<Producto, 'id' | 'esInterno'>; 
 
// DTO de Resumen: Solo incluye las propiedades esenciales para mostrar una lista. 
export type ProductoSummaryDTO = Pick<Producto, 'id' | 'nombre' | 'precio'>; 
 
// DTO de Actualización Parcial: Todos los campos son opcionales. 
export type ProductoUpdateDTO = Partial<ProductoCreateDTO>;  
 
// Enum para el estado de la respuesta de la API 
export enum HttpStatus { 
    OK = 200, 
    NOT_FOUND = 404, 
    SERVER_ERROR = 500 
} 
 
