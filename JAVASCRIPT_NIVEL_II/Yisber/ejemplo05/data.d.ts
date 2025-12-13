export interface Producto {
    id: number;
    nombre: string;
    descripcion: string;
    precio: number;
    esInterno: boolean;
}
export type ProductoCreateDTO = Omit<Producto, 'id' | 'esInterno'>;
export type ProductoSummaryDTO = Pick<Producto, 'id' | 'nombre' | 'precio'>;
export type ProductoUpdateDTO = Partial<ProductoCreateDTO>;
export declare enum HttpStatus {
    OK = 200,
    NOT_FOUND = 404,
    SERVER_ERROR = 500
}
//# sourceMappingURL=data.d.ts.map