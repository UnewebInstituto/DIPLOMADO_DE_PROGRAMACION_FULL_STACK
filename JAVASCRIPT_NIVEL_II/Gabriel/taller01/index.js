"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
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
//parte 2 del taller 
const curso = "typescript fundamental";
const horas = 4;
function bienvenida(nombre, tema) {
    console.log(`hola ${nombre},bienvenido al curso de ${tema}`);
}
bienvenida("estudiante proactivo", curso);
console.log(`durcion de hoy ${horas} horas`);
//parte 3 del taller 
console.log("\n--- ejercicio A:Any ---");
let datosSinControl = 100;
try {
    const resultado = datosSinControl.
        toUpperCase();
    console.log(resultado);
}
catch (error) {
    console.log("error capturado en tiempo de ejecucion (peligro):");
}
//ahora se reasigna a otro tipo 
datosSinControl = "typescript";
console.log("valos asignado y usado:", datosSinControl.toUpperCase());
//parte 4 del taller
console.log("\n--- ejercicio B:Unknow ---");
let datosDesconocidos = 100;
if (typeof datosDesconocidos === "string") {
    console.log("Es un String:", datosDesconocidos.toLocaleUpperCase());
}
else if (typeof datosDesconocidos === "number") {
    console.log("Es un número:", datosDesconocidos.toFixed(2));
}
else {
    console.log("Tipo de dato no manejador");
}
//# sourceMappingURL=index.js.map