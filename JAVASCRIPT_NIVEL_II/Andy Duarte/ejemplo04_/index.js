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
//funciones
function revertirArray(items) {
    return items.reverse();
}
//const
const nombres = ["Alice", "Bob", "Charlie"];
const nombresRevertidos = revertirArray(nombres); // Tipo: string[]
// Prueba con numbers 
const numeros = [99, 78, 115, 23];
const numerosRevertidos = revertirArray(numeros); // Tipo: number[] 
console.log("Nombres revertidos:", nombresRevertidos);
console.log("Números revertidos:", numerosRevertidos);
function registrarTiempo(target, propertyKey, descriptor) {
    const metodoOriginal = descriptor.value;
    // Reemplazamos el método original con una nueva implementación 
    descriptor.value = function (...args) {
        const t1 = Date.now();
        const resultado = metodoOriginal.apply(this, args);
        const t2 = Date.now();
        console.log(`\n@LOGGER: El método '${propertyKey}' tardó ${t2 - t1}ms.`);
        return resultado;
    };
    return descriptor;
}
// Implementación de la Clase 
class Calculadora {
    sumarLentamente(a, b) {
        // Simulación de una tarea pesada 
        let i = 0;
        while (i < 1e7) {
            i++;
        }
        return a + b;
    }
}
__decorate([
    registrarTiempo // Aplicamos el decorador al método 
    ,
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Number, Number]),
    __metadata("design:returntype", Number)
], Calculadora.prototype, "sumarLentamente", null);
const calc = new Calculadora();
calc.sumarLentamente(10, 20);
console.log(calc.sumarLentamente(10, 20));
//# sourceMappingURL=index.js.map