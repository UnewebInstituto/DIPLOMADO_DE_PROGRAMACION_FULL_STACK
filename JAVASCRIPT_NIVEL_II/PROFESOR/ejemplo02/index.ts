// Declaración de Arreglos

let nombres:string[] = ["Yisber", "Andy", "Jesús", "Gabriel", "Alejandro"];

console.log('NOMBRES');
nombres.forEach((nombre)=>{
    console.log(nombre);
})

let edades:number[] = [20, 17, 25, 29, 18];

console.log('EDADES');
for (let index = 0; index < edades.length; index++) {
    console.log(edades[index]);
}

// edadesformconsole.log(edades[index]);

let precios:Array<number> = [10.5, 20.99, 5.00];
console.log("PRECIOS");
precios.forEach((precio)=>{
    console.log(precio);
})

let esValido:Array<boolean> = [true, false, true];
console.log("VÁLIDOS");
esValido.forEach((valido)=>{
    console.log(valido);
})

// Declaración de Tuplas
let usuario:[string, number];

usuario = ["Ana Vasquez", 32];

console.log("DATOS DEL USUARIO");
console.log(usuario[0]);
console.log(usuario[1]);

let coordenadas:[number, number, string];

coordenadas = [10.500000, -66.916664, "Caracas"];
console.log(`COORDENADAS DE ${coordenadas[2]}`);
console.log(coordenadas[0]);
console.log(coordenadas[1]);

let coordenadas1:[number, number, string] = [10.6333333333, -71.6333333333, "Maracaibo"];

console.log(`COORDENADAS DE ${coordenadas1[2]}`);
console.log(coordenadas1[0]);
console.log(coordenadas1[1]);

// Declaración de Interface y Alias de Tipo

interface Producto{
    id:number;
    nombre:string;
    precio:number;
    stock:boolean;
    // propiedad opcional puede existir o no
    descripcion?:string;
}

const libro:Producto ={
    id:101,
    nombre:'Clean code',
    precio:50.99,
    stock:true
}

console.log("DATOS DEL PRODUCTO");
console.log(libro.id);
console.log(libro.nombre);
console.log(libro.precio);
console.log(libro.stock);


// Declaración de alias de tipo

type ID = string|number;

let userId:ID = "abc-123";
let productId:ID = 456;

// Alias para objetos, similares a interfaces

type Punto = {
    x:number,
    y:number
};
const origen:Punto = {x:0, y:0};

// Unión, Intersección y Literales
type Estado = "activo"|"inactivo"|"pendiente";

let status:Estado = "activo";
// status:Estado = "eliminado";

function imprimirID(id:string|number){
    if (typeof id === "string"){
        console.log(`ID en mayúscula: ${id.toUpperCase()}`);
    }else if (typeof id === "number"){
        console.log(`ID numérico: ${id.toFixed(0)}`);
    }
}

imprimirID(108);
imprimirID("user-200");
