"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
console.log('Hola Mundo');
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
//Declaracion de la Funcion
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
mostrarDatos("ana", 60, "Auditor");
function mostrarDatos1(nombre, edad, cargo) {
    if (typeof (cargo) === 'string') {
        console.log('NOMBRE:' + nombre, ", EDAD:" + edad, ", CARGO:" + cargo);
    }
    else {
        console.log("Error: Tipo de dato, recibido para el cargo no es válido");
    }
}
mostrarDatos("ANA", 60, "Auditor");
mostrarDatos1("YOLANDA", 25, "Asistente");
mostrarDatos1("YOLANDA", 60, 12345);
//parte II Taller
const curso = "Typescript Fundamental";
const horas = 4;
function bienvenida(nombre, tema) {
    console.log(`Hola ${nombre}, Bienvenido al curso de ${tema}`);
}
bienvenida("ESTUDIANTE PROACTIVO", curso);
console.log(`Duración de hoy ${horas} horas`);
//PARTE III
console.log("\n--- Ejercicio A: Any ---");
let datosSinControl = 100;
//  TypeScript lo permite, ya que 'any' desactiva la comprobación.
// Esto FALLARÁ en tiempo de ejecución (runtime error).
// Un número no tiene el método toUpperCase.
try {
    const resultado = datosSinControl.toUpperCase();
    console.log("Resultado: ", resultado);
}
catch (error) {
    console.error("Error capturado en tiempo de ejecución (¡peligro!):", error);
}
// Ahora se reasigna a otro tipo
datosSinControl = "typescript";
console.log("Valor reasignado y usado: ", datosSinControl.toUpperCase());
//parte IV
console.log("\n--- Ejercicio B: Unknown ---");
let datosDesconocidos = 100;
// Intenta descomentar la línea de abajo. El compilador lanzará un error.
// datosDesconocidos.toUpperCase();
// Para usar métodos, TypeScript nos fuerza a hacer una Aserción o Comprobación de Tipo.
if (typeof datosDesconocidos === 'string') {
    // dentro de este bloque, TypeScript sabe que es un string y permite usar sus métodos.
    console.log("Es un string, OK: ", datosDesconocidos.toUpperCase());
}
else if (typeof datosDesconocidos === 'number') {
    // Dentro de este bloque, TypeScript sabe que es un number.
    console.log("Es un número, OK: ", datosDesconocidos.toFixed(2));
}
else {
    console.log("Tipo no manejado.");
}
//# sourceMappingURL=index.js.map