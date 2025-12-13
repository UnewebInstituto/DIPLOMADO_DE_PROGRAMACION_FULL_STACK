"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// Declaración de funciones
// 1 sólo parámetro
function identidad(arg) {
    return arg;
}
// ***  Explicación en clase4_ej01.txt ***
// Múltiples parámetros
function getPropiedad(obj, key) {
    return obj[key];
}
// *****************************************************
function getPropiedadesDeArray(arr, key) {
    return arr.map(obj => obj[key]);
}
// Uso para respuesta que devuelve un array de string
const respStrings = {
    codigo: 200,
    mensaje: 'OK',
    data: ['item1', 'item2']
};
// Cuerpo principal del programa
let output1 = identidad("Hola Mundo");
let output2 = identidad(123);
let output3 = identidad("Typescript");
let output4 = identidad(true);
console.log(output1, typeof (output1));
console.log(output2, typeof (output2));
console.log(output3, typeof (output3));
console.log(output4, typeof (output4));
// Se crea un objeto a partir de la clase interface Persona
const usuario = {
    nombre: "Alice",
    edad: 0,
    activo: true
};
/**                   función
 *                       |   Se le pasa como parámetro el objeto
 *                       |             | Índice del valor a obtener
 *                       |             |        |
 *                       v             v        v
 */
const nombreDelUsuario = getPropiedad(usuario, "nombre");
const edadDelUsuario = getPropiedad(usuario, "edad");
const condicionDelUsuario = getPropiedad(usuario, "activo");
console.log("Nombre del usuario:", nombreDelUsuario);
console.log("Edad del usuario:", edadDelUsuario);
console.log("Condición del usuuario:", condicionDelUsuario);
// ******************************************************
const productos = [
    { id: 1, nombre: "Laptop", precio: 1200 },
    { id: 2, nombre: "Mouse", precio: 25 },
    { id: 3, nombre: "Teclado", precio: 75 }
];
// Obtener sólo los nombres de los productos
const nombre = 
    *  | Se, le, pasa, como, parámetro, el, objeto;
    *  |  | Índice;
del;
valor;
a;
obtener
    *  |  |  |
        * v;
v;
v
    * /;
const nombreDelUsuario = getPropiedad(usuario, "nombre");
const edadDelUsuario = getPropiedad(usuario, "edad");
const condicionDelUsuario = getPropiedad(usuario, "activo");
console.log("Nombre del usuario:", nombreDelUsuario);
console.log("Edad del usuario:", edadDelUsuario);
console.log("Condición del usuuario:", condicionDelUsuario);
// ******************************************************
const productos = [
    { id: 1, nombre: "Laptop", precio: 1200 },
    { id: 2, nombre: "Mouse", precio: 25 },
    { id: 3, nombre: "Teclado", precio: 75 }
];
// Obtener sólo los nombres de los productos
const nombres = getPropiedadesDeArray(productos, "nombre");
const precios = getPropiedadesDeArray(productos, "precio");
console.log(nombres);
console.log(precios);
// *************************************************
const valorCodigo = getPropiedad(respStrings, "codigo");
const valorMensaje = getPropiedad(respStrings, "mensaje");
const valorData = getPropiedad(respStrings, "data");
console.log("---");
console.log(valorCodigo);
console.log(valorMensaje);
console.log(valorData);
// Instancia de la clase
const contenedorNumeros = new Contenedor();
contenedorNumeros.agregar(42);
contenedorNumeros.agregar(24);
contenedorNumeros.agregar(84);
console.log(contenedorNumeros);
//
let persona = { nombre: 'Ana', edad: 30 };
console.log(obtenerNombre(persona));
console.log("---");
console.log(valorCodigo);
console.log(valorMensaje);
console.log(valorData);
// Instancia de la clase
const contenedorNumeros = new Contenedor();
contenedorNumeros.agregar(42);
contenedorNumeros.agregar(24);
contenedorNumeros.agregar(84);
console.log(contenedorNumeros);
//
let persona = { nombre: 'Ana', edad: 30 };
console.log(obtenerNombre(persona));
// Prueba de decoradores
console.log("--- Prueba de Decoradores ---");
const emp = new Empleado();
console.log("Nombre:", emp.nombre);
console.log("Fecha de registro:", emp.fechaRegistro);
// Prueba de definición genérica
const nombresTaller = ["Alice", "Bob", "Charlie"];
const nombresRevertidos = revertirArray(nombresTaller);
console.log("Nombres en orden inverso:", nombresRevertidos);
const numerosTaller = [99, 78, 115, 23];
const numerosRevertidos = revertirArray(numerosTaller);
console.log("Números en orden inverso:", numerosRevertidos);
//# sourceMappingURL=index.js.map