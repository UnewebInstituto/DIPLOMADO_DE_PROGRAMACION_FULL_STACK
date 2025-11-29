
console.log("RESULTADOS DE DECLARACIONES EXPLICITAS")

// DECLARACIÓN EXPLICITA
let edad:number = 30;
let pi:number = 3.14159;
let miNumero:number = 10;

console.log(edad);
console.log(pi);
console.log(miNumero);
console.log("------");

// "", '', ``
let nombre: string = "Alicia";
let saludo: string = `Hola mi nombre es ${nombre}`;

console.log(nombre);
console.log(saludo);
console.log("------");

let esActivo: boolean = true;

console.log(esActivo);

console.log("RESULTADOS DE DECLARACIONES IMPLICITAS")

// DECLARACIÓN IMPLICITA
let miCadena = 'Hola Mundo';
// miCadena = 10; -- Se detecta inconcistencia en la asignación

console.log(miCadena);

//TIPOS ESPECIALES
let data: any = 'Hola';
data = 10;

console.log(data);
console.log("-----")

let valor:unknown = "un texto";
// valor.toUpperCase() -- no se puede dado que se requiere la verificacin de tipo antes de re asignar
if (typeof valor === 'string'){
  // Al ser válida la verificaci´n permite la re asignación
  valor.toUpperCase();
}

console.log(valor);
console.log("-----")

// Se usa paa funciones que no retornan un valor
function logMessage(msg:string):void{
  console.log(msg);
}

// Llamdo a la función 
logMessage('Esto es una prueba de void');

// CASO DE ERROR
function error(mensaje:string):never{
  throw new Error(mensaje);
}

// No se hace el llamdo para evitar finalización
// error('Esto es una prueba de never');

// ASERCIONES DE TIPO
console.log("-----")
console.log("RESULTADOS DE ASERCIONES DE TIPO")

let codigo:any = "12345";
console.log(codigo);
let largo:number = (codigo as string).length;
console.log(largo);

// SINTAXIS ANTIGUA 
let codigo2:any = "6789";
console.log(codigo2);
let largo2:number =(<string>codigo2).length;
console.log(largo2);