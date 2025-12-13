"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
/**
* Función Genérica para fusionar dos objetos.
* @param obj1 Primer objeto (Tipo T)
* @param obj2 Segundo objeto (Tipo U)
* @returns Un nuevo objeto que es la intersección de T y U (T & U)
*/
function combinarObjetos(obj1, obj2) {
    // Usamos el spread operator de JavaScript para combinar las propiedades 
    // y la aserción de tipo para garantizar el tipo de intersección. 
    return { ...obj1, ...obj2 };
}
// --- Prueba de la Función --- 
// 1. Definición de tipos de entrada 
const clienteBase = { id: 101, nombre: "Juan Pérez" }; // Infiere tipo { id: number, nombre: string } 
const infoContacto = { email: "juan@mail.com", telefono: "555-4321" }; // Infiere tipo { email: string, telefono: string } 
// 2. Llamada a la función genérica 
// TypeScript infiere el tipo de retorno como la unión de ambos tipos (intersección de propiedades). 
const clienteCompleto = combinarObjetos(clienteBase, infoContacto);
console.log("--- 1. Genéricos ---");
console.log(`Email: ${clienteCompleto.email}`);
console.log(`Nombre: ${clienteCompleto.nombre}`);
/**
 * Decorador de Método: Registra la hora y los argumentos cada vez que el método es llamado.
 * target: El prototipo de la clase.
 * propertyKey: El nombre del método (string).
 * descriptor: Objeto que describe el método (donde está 'value').
 */
function LogLlamada(target, propertyKey, descriptor) {
    const metodoOriginal = descriptor.value; // Guardamos la referencia a la implementación original 
    // 1. Reemplazamos la implementación del método 
    descriptor.value = function (...args) {
        const timestamp = new Date().toLocaleTimeString();
        console.log(`\n@LOG [${timestamp}] -> Método: ${propertyKey} llamado con argumentos: [${args.join(', ')}]`);
        // 2. Ejecutamos el método original 
        const resultado = metodoOriginal.apply(this, args);
        // 3. Registramos el resultado del método 
        console.log(`@LOG [${timestamp}] -> Método: ${propertyKey} devolvió: ${JSON.stringify(resultado)}`);
        return resultado;
    };
    return descriptor;
}
// --- Implementación de la Clase --- 
class ProcesadorDatos {
    // Definimos el método y aplicamos el decorador directamente encima 
    procesar(datos, operacion) {
        console.log(`[PROCESADOR] Ejecutando operación: ${operacion}`);
        // Simulación de lógica 
        return datos.length * 2;
    }
}
__decorate([
    LogLlamada,
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Array, String]),
    __metadata("design:returntype", Number)
], ProcesadorDatos.prototype, "procesar", null);
// --- Prueba de la Clase Decorada --- 
console.log("\n--- 2. Decoradores ---");
const procesador = new ProcesadorDatos();
const resultado = procesador.procesar(["a", "b", "c"], "Conteo Doble");
console.log(`Resultado final: ${resultado}`);
//# sourceMappingURL=index.js.map