"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
//declaracion de arreglos
let nombres = ["Yisber", "Andy", "Jesús", "Gabriel", "Alejandro"];
console.log('Nombre');
nombres.forEach((nombre) => {
    console.log(nombre);
});
let edades = [20, 17, 25, 29, 18];
console.log('EDADES');
for (let index = 0; index < edades.length; index++) {
    console.log(edades[index]);
}
// Otra forma de declaración de arreglos
let precios = [10.5, 20.99, 5.00];
console.log("PRECIOS");
precios.forEach((precio) => {
    console.log(precio);
});
let esValido = [true, false, true];
console.log("VÁLIDOS");
esValido.forEach((valido) => {
    console.log(valido);
});
//declaracion de tuplas
let usuario;
usuario = ["Ana Vasquez", 32];
console.log("DATOS DEL USUARIO");
console.log(usuario[0]);
console.log(usuario[1]);
let coordenadas;
coordenadas = [10.50000, -66.916664, "Ccs"];
console.log(`COORDENADAS DE ${coordenadas[2]}`);
console.log(coordenadas[0]);
console.log(coordenadas[1]);
let coordenadas1 = [10.6333333333, -71.6333333333, "Maracaibo"]; //otra forma de hacerlo
console.log(`COORDENADAS DE ${coordenadas1[2]}`);
console.log(coordenadas1[0]);
console.log(coordenadas1[1]);
const libro = {
    id: 101,
    nombre: "Clean Code",
    precio: 50.99,
    stock: true
};
console.log("DATOS DEL PRODUCTO");
console.log(libro.id);
console.log(libro.nombre);
console.log(libro.precio);
console.log(libro.stock);
let userId = "abc-123";
let productId = 456;
const Origen = { x: 0, y: 0 };
let status = "Activo";
function imprimirID(id) {
    if (typeof id === "string") {
        console.log(`ID en Mayúsculas: ${id.toUpperCase()}`);
    }
    else {
        console.log(`ID Numérico: ${id.toFixed(0)}`);
    }
}
imprimirID(108);
imprimirID("user-200");
//# sourceMappingURL=index.js.map