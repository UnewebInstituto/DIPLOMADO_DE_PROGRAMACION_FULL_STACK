import { HttpStatus } from './data.js';
interface ApiResponse<T> {
    status: HttpStatus;
    data: T | null;
    error?: string;
}
/**
* Simula una llamada fetch a una API.
* @param endpoint El endpoint de la API.
* @returns Una promesa que resuelve a un ApiResponse<T>.
*/
export declare function fetchData<T>(endpoint: string): Promise<ApiResponse<T>>;
export {};
//# sourceMappingURL=api.d.ts.map