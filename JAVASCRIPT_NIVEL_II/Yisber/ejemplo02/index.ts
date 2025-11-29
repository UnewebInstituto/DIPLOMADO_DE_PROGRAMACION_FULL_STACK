//declaracion de arreglos
let nombres:string[] = ["Yisber", "Andy", "Jesús", "Gabriel", "Alejandro"];
console.log('Nombre')
nombres.forEach((nombre)=>{
    console.log(nombre);
})
let edades:number[] = [20, 17, 25, 29, 18];
console.log('EDADES');
for (let index = 0; index < edades.length; index++) {
    console.log(edades[index]);
}
// Otra forma de declaración de arreglos

let precios:Array<number> = [10.5, 20.99, 5.00];
console.log("PRECIOS");
precios.forEach((precio)=>{
    console.log(precio);
})
let esValido:Array<boolean> = [true, false, true]

console.log("VÁLIDOS");
esValido.forEach((valido)=>{
    console.log(valido);
})
//declaracion de tuplas
let usuario:[string, number];


usuario = ["Ana Vasquez", 32];
console.log("DATOS DEL USUARIO");
console.log(usuario[0]);
console.log(usuario[1]);

let coordenadas:[number, number, string];

coordenadas = [10.50000, -66.916664,"Ccs"];
console.log(`COORDENADAS DE ${coordenadas[2]}`);
console.log(coordenadas[0]);
console.log(coordenadas[1]);
let coordenadas1:[number, number, string] = [10.6333333333, -71.6333333333, "Maracaibo"]//otra forma de hacerlo
console.log(`COORDENADAS DE ${coordenadas1[2]}`);
console.log(coordenadas1[0]);
console.log(coordenadas1[1]);

//declaracion de insterfacey alias de tipo
interface Producto {
    id: number;
    nombre: string;
    precio: number;
    stock: boolean;
    //propiedad opcional puede existir o no
    descripcion?: string;

}
const libro: Producto ={
    id: 101,
    nombre:"Clean Code",
    precio: 50.99,
    stock: true
};
console.log("DATOS DEL PRODUCTO");
console.log(libro.id);
console.log(libro.nombre);
console.log(libro.precio);
console.log(libro.stock);


// Declaración de alias de tipo
type ID = string|number;

let userId:ID = "abc-123";
let productId:ID = 456;

//alias para objetos similares a interfaces
type Punto = { 
x: number; 
y: number; 
}; 
const Origen: Punto = { x: 0, y: 0 }; 

//Unión, Intersección y Literales 
type Estado = "Activo" | "Inactivo" | "Pendiente";
let status: Estado = "Activo"; 

function imprimirID(id: string | number) { 
    if (typeof id === "string") { 
console.log(`ID en Mayúsculas: ${id.toUpperCase()}`); 
} else { 
console.log(`ID Numérico: ${id.toFixed(0)}`); 
} 
} 
imprimirID(108); 
imprimirID("user-200"); 