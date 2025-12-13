"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
function identidad(arg) {
    return arg;
}
// Uso explícito (TypeScript infiere el tipo de todas formas) 
let output1 = identidad("Hola Mundo"); // output1 es de tipo string 
let output2 = identidad(123);
// output2 es de tipo number 
// Uso por inferencia (el mejor enfoque) 
let output3 = identidad("TypeScript"); // T se infiere como string 
let output4 = identidad(true);
//multiples parametros
function getPropiedad(obj, key) {
    return obj[key];
}
function obtenerNombre(objeto) {
    return objeto.nombre;
}
// Función decoradora (Class Decorator) 
function Auditable(Constructor) {
    return class extends Constructor {
        fechaRegistro = new Date();
    };
}
//clase 
class Contenedor {
    elemento = [];
    agregar(item) {
        this.elemento.push(item);
    }
    obtener(index) {
        return this.elemento[index];
    }
}
let Empleado = class Empleado {
    nombre = "Desconocido";
};
Empleado = __decorate([
    Auditable
], Empleado);
//uso para respuesta que devuelve un array de string
const respStrings = {
    codigo: 200,
    mensaje: "OK",
    data: ["item1", "item2"]
};
console.log(output1, typeof (output1));
console.log(output2, typeof (output2));
console.log(output3, typeof (output3));
console.log(output4, typeof (output4));
console.log("----------------------------------------");
const usuario = {
    nombre: "Alice",
    edad: 30,
    activo: true
};
const nombreDeUsuario = getPropiedad(usuario, "nombre");
const edadDeUsuario = getPropiedad(usuario, "edad");
const condicionDeUsuario = getPropiedad(usuario, "activo");
console.log(`Nombre: ${nombreDeUsuario}, Edad: ${edadDeUsuario}, Condicion: ${condicionDeUsuario}`);
console.log("----------------------------------------");
const productos = [
    { id: 1, nombre: "Laptop", precio: 1200 },
    { id: 2, nombre: "Mouse", precio: 25 },
    { id: 3, nombre: "Teclado", precio: 75 }
];
/**
 * Función para obtener un array de valores de una propiedad específica
 * de un array de objetos.
 * * @param arr El array de objetos (tipo genérico T[])
 * @param key La clave de la propiedad a extraer (tipo K extends keyof T)
 * @returns Un array de los valores de esa propiedad (tipo T[K][])
 */
function getPropiedadesDeArray(arr, key) {
    return arr.map(obj => obj[key]);
}
// Obtener solo los nombres de los productos
const nombres = getPropiedadesDeArray(productos, "nombre");
// nombres es de tipo 'string[]'
console.log("Nombres:", nombres);
// Salida: Nombres: [ 'Laptop', 'Mouse', 'Teclado' ]
// Obtener solo los precios de los productos
const precios = getPropiedadesDeArray(productos, "precio");
// precios es de tipo 'number[]'
console.log("Precios:", precios);
// Salida: Precios: [ 1200, 25, 75 ]
console.log("Nombres y Precios:", nombres, precios);
const valorCodigo = getPropiedad(respStrings, "codigo");
const valorMensaje = getPropiedad(respStrings, "mensaje");
const valorData = getPropiedad(respStrings, "data");
console.log("----------------------------------------");
console.log(valorCodigo);
console.log(valorMensaje);
console.log(valorData);
console.log("----------------------------------------");
const contenedorNumeros = new Contenedor();
contenedorNumeros.agregar(42);
contenedorNumeros.agregar(24);
contenedorNumeros.agregar(84);
console.log(contenedorNumeros);
console.log("----------------------------------------");
let persona = { nombre: "Ana", edad: 30 };
console.log(obtenerNombre(persona)); // "Ana" 
console.log("----------------------------------------");
const emp = new Empleado();
console.log(emp.fechaRegistro); // La clase ahora tiene esta propiedad
//# sourceMappingURL=index.js.map