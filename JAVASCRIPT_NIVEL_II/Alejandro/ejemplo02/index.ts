// ARRAY
let nombres:string[] = ['Yisber', 'Andy', 'Jesús', 'Gabriel', 'Alejandro'];

console.log("NOMBRES:");
nombres.forEach((nombre)=> {
  console.log(nombre);
})

let edades:number[] = [20, 17, 25, 29, 18];

console.log("EDADES:");
for (let index = 0; index < edades.length; index++) {
  console.log(edades[index]);
}

// OTRA FORMA DE DECLARAR ARREGLOS
let precios:Array<number> = [10.5, 20.99, 5.00];

console.log("PRECIOS:");
precios.forEach((precio)=>{
  console.log(precio);
})

let esValido:Array<boolean> = [true, false, true];

console.log("VÁLIDOS:");
precios.forEach((valido)=>{
  console.log(valido);
})

// TUPLAS
let usuario:[string, number];
usuario = ['Ana Vasquez', 32];

console.log("DATOS DEL USUARIO:");
console.log(usuario[0]);
console.log(usuario[1]);

let coordenadas:[number, number, string] = [10.50, 66.92,'Caracas'];

console.log(`COORDENADAS DE ${coordenadas[2]}:`);
console.log(coordenadas[0]);
console.log(coordenadas[1]);
console.log(coordenadas[2]);

// INTERFACES Y AREAS DE TIPO
interface Producto{
  id:number;
  nombre:string;
  precio:number;
  stock:boolean;
  descripcion?:string;
}

const libro:Producto = {
  id:101,
  nombre:'Clean code',
  precio:50.99,
  stock:true
}

console.log("DATOS DEL PRODUCTO:");
console.log(libro.id);
console.log(libro.nombre);
console.log(libro.precio);
console.log(libro.stock);

// ALIAS DE TIPO
type ID = string|number;

let userId:ID = 'abc-123';
let productId:ID = 456;

// ALIAS PARA OBJETOS, SIMILARES A INTERFACES
type Punto = {
  x:number,
  y:number
};

const origen:Punto = {x:0, y:0};

// UNION, INTERSECCION Y LITERALES
type Estado = "activo"|"inactivo"|"pendiente";

let estatus:Estado = "activo";
// estatus:Estado = 'eliminado';

function imprimirID(id:string|number){
  if(typeof id === 'string'){
    console.log(`Id en mayúscula: ${id.toUpperCase()}`);
  } else if(typeof id === 'number'){
    console.log(`Id numérico: ${id.toFixed(2)}`);
  }
}

imprimirID(108);
imprimirID("User-200");