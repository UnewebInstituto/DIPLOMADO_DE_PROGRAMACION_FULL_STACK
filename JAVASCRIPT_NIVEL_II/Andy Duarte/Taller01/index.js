"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// Parte 1 del Taller
console.log("Hola Mundo...");
// Declaración explicita
let cargo = "Director";
let antiguedad = 3;
let esProfesional = true;
// Declaración implicita
let empresa = "UNEWEB";
empresa = "Uneweb Instituto";
let piso = 10;
piso = 11;
let esEmpresa = true;
esEmpresa = false;
// Declaración de función
function sumar(n1, n2) {
    return (n1 + n2);
}
function resultado() {
    console.log(sumar(numero1, numero2));
}
let numero1 = 2;
let numero2 = 5;
resultado();
function mostrarDatos(nombre, edad, cargo) {
    console.log('NOMBRE:' + nombre, ", EDAD:" + edad, ", CARGO:" + cargo);
}
function mostrarDatos1(nombre, edad, cargo) {
    if (typeof (cargo) === 'string') {
        console.log('NOMBRE:' + nombre, ", EDAD:" + edad, ", CARGO:" + cargo);
    }
    else {
        console.log("Error: Tipo de dato, recibido para el cargo no es válido");
    }
}
mostrarDatos("ANA", 60, "AUDITOR");
mostrarDatos1("YOLANDA", 25, "ASISTENTE");
mostrarDatos1("YOLANDA", 60, 12345);
// Parte 2 del Taller
const curso = "Typescript Fundamental";
const horas = 4;
function bienvenida(nombre, tema) {
    console.log(`Hola ${nombre}, bienvenido al curso de ${tema}`);
}
bienvenida("ESTUDIANTE PROACTIVO", curso);
console.log(`Duración de hoy ${horas} horas`);
// Parte 3 del Taller
console.log("\n--- Ejercicio A:Any ---");
let datosSinControl = 100;
try {
    const resultado = datosSinControl.toUpperCase();
    console.log(resultado);
}
catch (error) {
    console.error("Error capturado en tiempo de ejecución (¡Peligro!):");
}
// Ahora se reasigna a otro tipo
datosSinControl = "typescript";
console.log("Valor asignado y usado:", datosSinControl.toUpperCase());
//parte 4
console.log("\n--- Ejercicio B: Unknown ---");
let datosDesconocidos = 100;
// 
// datosDesconocidos.toUpperCase();  
//
if (typeof datosDesconocidos === 'string') {
    // Dentro de este bloque, TypeScript sabe que es un string y permite usar sus métodos. 
    console.log("Es un string: ", datosDesconocidos.toUpperCase());
}
else if (typeof datosDesconocidos === 'number') {
    // Dentro de este bloque, TypeScript sabe que es un number. 
    console.log("Es un número: ", datosDesconocidos.toFixed(2));
}
else {
    console.log("Tipo no manejado.");
}
//# sourceMappingURL=index.js.map