"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
console.log("Hola mundo");
console.log("-----");
// EXPLICITO
let cargo = 'Director';
console.log(cargo);
let antiguedad = 3;
console.log(antiguedad);
let esProfesional = true;
console.log(esProfesional);
console.log("-----");
// IMPLICITO
let empresa = "UNEWEB";
empresa = "UNEWEB INSTITUTO";
console.log(empresa);
let piso = 10;
piso = 11;
console.log(piso);
let esEmpresa = true;
esEmpresa = false;
console.log(esEmpresa);
console.log("-----");
function sumar(n1, n2) {
    return (n1 + n2);
}
function resultado() {
    console.log(sumar(numero1, numero2));
    console.log("-----");
}
// Pase de parametros por referencia
let numero1 = 2;
let numero2 = 5;
resultado();
function mostrarDatos(nombre, edad, cargo) {
    console.log('NOMBRE:' + nombre, ", EDAD:" + edad, ', CARGO:' + cargo);
}
function mostrarDatos1(nombre, edad, cargo) {
    if (typeof (cargo) === "string") {
        console.log('NOMBRE:' + nombre, ", EDAD:" + edad, ', CARGO:' + cargo);
    }
    else {
        console.log("Error: Tipo de dato recibido para el cargo no es válido");
    }
}
mostrarDatos("ANA", 60, 'AUDITOR');
mostrarDatos1("YOLANDA", 25, 'ASISTENTE');
mostrarDatos1("YOLANDA", 60, 12345);
console.log("------");
// PARTE 2 DEL TALLER
const curso = "Typescript Fundamental";
const horas = 4;
function bienvenida(nombre, tema) {
    console.log(`Hola ${nombre}, bienvenido al curso de ${tema}`);
}
bienvenida("ESTUDIANTE PROACTIVO", curso);
console.log(`Duracion de hoy ${horas} horas`);
console.log("------");
// PARTE 3 DEL TALLER
console.log("\n--- Ejercicio A:ANY ---");
let datosSinControl = 100;
try {
    const resultado = datosSinControl.toUpperCase();
    console.log(resultado);
}
catch (error) {
    console.error("Error capturadoen tiempo de ejecución (¡Peligro!");
    // , error
}
console.log("-----");
datosSinControl = "typescript";
console.log("Valor asignado y usado:", datosSinControl.toUpperCase());
// PARTE 4 DEL TALLER
console.log("\n--- Ejercicio B:UNKNOW ---");
let datosDesconocidos = 'es un numero';
if (typeof datosDesconocidos === 'string') {
    console.log("Es un string:", datosDesconocidos.toLocaleUpperCase());
}
else if (typeof datosDesconocidos === 'number') {
    console.log("Es un numero:", datosDesconocidos.toFixed(2));
}
else {
    console.log("Tipo de dato no manejado");
}
//# sourceMappingURL=index.js.map