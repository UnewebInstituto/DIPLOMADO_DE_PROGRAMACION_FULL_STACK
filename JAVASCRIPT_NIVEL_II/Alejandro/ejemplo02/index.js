"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// ARRAY
let nombres = ['Yisber', 'Andy', 'Jesús', 'Gabriel', 'Alejandro'];
console.log("NOMBRES:");
nombres.forEach((nombre) => {
    console.log(nombre);
});
let edades = [20, 17, 25, 29, 18];
console.log("EDADES:");
for (let index = 0; index < edades.length; index++) {
    console.log(edades[index]);
}
// OTRA FORMA DE DECLARAR ARREGLOS
let precios = [10.5, 20.99, 5.00];
console.log("PRECIOS:");
precios.forEach((precio) => {
    console.log(precio);
});
let esValido = [true, false, true];
console.log("VÁLIDOS:");
precios.forEach((valido) => {
    console.log(valido);
});
// TUPLAS
let usuario;
usuario = ['Ana Vasquez', 32];
console.log("DATOS DEL USUARIO:");
console.log(usuario[0]);
console.log(usuario[1]);
let coordenadas = [10.50, 66.92, 'Caracas'];
console.log(`COORDENADAS DE ${coordenadas[2]}:`);
console.log(coordenadas[0]);
console.log(coordenadas[1]);
console.log(coordenadas[2]);
const libro = {
    id: 101,
    nombre: 'Clean code',
    precio: 50.99,
    stock: true
};
console.log("DATOS DEL PRODUCTO:");
console.log(libro.id);
console.log(libro.nombre);
console.log(libro.precio);
console.log(libro.stock);
let userId = 'abc-123';
let productId = 456;
const origen = { x: 0, y: 0 };
let estatus = "activo";
// estatus:Estado = 'eliminado';
function imprimirID(id) {
    if (typeof id === 'string') {
        console.log(`Id en mayúscula: ${id.toUpperCase()}`);
    }
    else if (typeof id === 'number') {
        console.log(`Id numérico: ${id.toFixed(2)}`);
    }
}
imprimirID(108);
imprimirID("User-200");
//# sourceMappingURL=index.js.map