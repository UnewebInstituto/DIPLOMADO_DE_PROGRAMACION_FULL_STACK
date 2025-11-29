"use strict";
//declaraciones explicitas
Object.defineProperty(exports, "__esModule", { value: true });
console.log('RESULTADO DE DECLARACIONES EXPLICITAS');
let edad = 30;
let pi = 3.14159;
let miNumero = 10;
console.log(edad);
console.log(pi);
console.log(miNumero);
console.log('-------');
// Declaración de variables del tipo string
// Se pueden definir usando "", '', ``
let nombre = "Alicia";
let saludo = `Hola mi nombre es ${nombre}`;
console.log(nombre);
console.log(saludo);
console.log('-------');
// Declaración de variables del tipo lógica
let esActivo = true;
console.log(esActivo);
console.log('-------');
// DECLARACIÓN IMPLICITA
console.log('RESULTADO DE DECLARACIONES IMPLICITAS');
let miCadena = 'Hola Mundo';
// miCadena = 10; Se detecta inconsistencia en la asiganción
// dado que previamente existía una asignación de cadena de 
// texto
console.log(miCadena);
console.log('-------');
// TIPOS ESPECIALES
let data = "Hola";
console.log(data);
console.log('-------');
data = 10; // Lo permite por el tipo de declaración
console.log(data);
console.log('-------');
let valor = "un texto";
//valor.toUpperCase() // No se puede, dado que se 
// requiere la verificación de tipo antes de re asignar
console.log(valor);
console.log('-------');
if (typeof valor === 'string') {
    // Al ser válida la verificación permite la re asignación
    valor.toUpperCase();
}
console.log(valor);
console.log('-------');
// Se usa para funciones que no retornan un valor
function logMessage(msg) {
    console.log(msg);
}
// Llamado a la función logMessage
logMessage('Esto es una prueba de llamado a una función');
console.log('-------');
// Caso de error
function error(mensaje) {
    throw new Error(mensaje);
}
// No se hace el llamado para evitar la finalizaci
//error('Esto es una prueba del tipo never');
console.log('-------');
console.log('ACERSIONES DE TIPO (TYPE ASSERTIONS)');
let codigo = "12345";
console.log(codigo);
let largo = codigo.length;
console.log(largo);
// Sintaxis antigua ><
let codigo2 = "67890";
console.log(codigo2);
let largo2 = codigo2.length;
console.log(largo2);
//# sourceMappingURL=index.js.map