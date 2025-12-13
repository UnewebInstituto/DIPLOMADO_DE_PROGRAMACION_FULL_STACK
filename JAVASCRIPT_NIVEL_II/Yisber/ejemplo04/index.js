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
function obtenerNombre(objeto) {
    return objeto.nombre;
}
function registrarTiempo(target, propertyKey, descriptor) {
    const metodoOriginal = descriptor.value;
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
//revertir array
function revertirArray(items) {
    return items.reverse();
}
//decoradores
function Auditable(Constructor) {
    return class extends Constructor {
        fechaRegistro = new Date();
    };
}
//uso añade la propiedad 'fecharegistro a las clase
let Empleados = class Empleados {
    nombre = "Desconocido";
};
Empleados = __decorate([
    Auditable
], Empleados);
//declaracion de clase
class Contenedor {
    //atributos
    elemento = [];
    //metodos    
    agregar(item) {
        this.elemento.push(item);
    }
    obtener(index) {
        return this.elemento[index];
    }
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
const nombreDelUsuario = getPropiedad(usuario, "nombre");
const edadDelUsuario = getPropiedad(usuario, "edad");
const condicionDelUsuario = getPropiedad(usuario, "activo");
console.log("Nombre del usuario:", nombreDelUsuario);
console.log("Edad del usuario:", edadDelUsuario);
console.log("Condición del usuario:", condicionDelUsuario);
// ******************************************************
const productos = [
    { id: 1, nombre: "Laptop", precio: 1200 },
    { id: 2, nombre: "Mouse", precio: 25 },
    { id: 3, nombre: "Teclado", precio: 75 }
];
//obtener solo los nombres de los productos
const nombres = getPropiedadesDeArray(productos, "nombre");
const precios = getPropiedadesDeArray(productos, "precio");
console.log(nombres);
console.log(precios);
//***
//  */
const valorCodigo = getPropiedad(respStrings, "codigo");
const valorData = getPropiedad(respStrings, "data");
const valorMensaje = getPropiedad(respStrings, "mensaje");
console.log("--");
console.log(valorCodigo);
console.log(valorData);
console.log(valorMensaje);
// Instancia de la clase
const contenedorNumeros = new Contenedor();
contenedorNumeros.agregar(42);
contenedorNumeros.agregar(24);
contenedorNumeros.agregar(84);
console.log(contenedorNumeros);
//
let persona = { nombre: "Ana", edad: 30 };
console.log(obtenerNombre(persona));
//prueba decoradores
console.log("--- Prueba de Decoradores ---");
const emp = new Empleados();
console.log("Nombre:", emp.nombre);
console.log("Fecha de registro:", emp.fechaRegistro);
//prueba de datos def genearica
const nombresTaller = ["Alice", "Bob", "Charlie"];
const nombresRevertidos = revertirArray(nombresTaller);
console.log("Nombres en orden inverso:", nombresRevertidos);
// con numeros en orden inverso
const numeros = [99, 215, 152, 158];
const numerosRevertidos = revertirArray(numeros); // Tipo: number[] 
console.log("Números inverso:", numerosRevertidos);
const calc = new Calculadora();
console.log(calc.sumarLentamente(10, 20));
//# sourceMappingURL=index.js.map