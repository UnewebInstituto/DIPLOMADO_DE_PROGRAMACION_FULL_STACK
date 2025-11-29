//DECLARACIONES EXPLICITAS
//Declaracion de variables numbericas
console.log('Resultado de declaraciones explicitas');
let edad: number = 38;
let pi: number = 3.14159;
let miNumero: number = 10;

console.log(edad);
console.log(pi);
console.log(miNumero);
console.log('-----');

//Declaracion de variables del tipo string
//Se pueden usar "",'',``
let nombre: string = 'Alicia';
let saludo: string = `Hola mi nombre es ${nombre}`;

console.log(nombre);
console.log(saludo);
console.log('-----');

//Declaracion de variables de tipo logicas
let esActivo: boolean = true;

//DECLARACION IMPLICITA
let miCadena = 'Hola Mundo';
//miCadena = 10; Detecta una inconsistencia en la asignacion 
// ya que ya habia una declaracion de cadena de texto

//Tipos especiales
let data: any = 'Hola';
console.log(data);
data = 10; //Lo permite por el tipo de declaracion
console.log(data);

//Tipo Unknown
let valor:unknown = 'Texto';
console.log(valor);
console.log('-----');
//Valor.toUpperCase() //  No se puede, dado que se 
//requiere la verififcacion de tipo antes de reasignar
if (typeof valor === 'string'){
  //Al ser la validada la verificacion permite la re asignacion
  valor.toUpperCase();
}
console.log(valor);
console.log('-----');

//Declaracion Void, s eusa para funciones que no retornan un valor
function logMessage(msg:string):void{
  console.log(msg);
}

//Llamamos a la funcion msg 
logMessage('Esto es una prueba de llamado a una funcion');
console.log('-----');


//Caso error
function error(mensaje:string):never{
throw new Error(mensaje);
}
//No se hace el llamado para evitar la interrupcion o finalizacion abrupta
//error('Esto es una prueba del tipo never');
console.log('-----');

//Type assertions
console.log('-----');

console.log('Aserciones de tipo');
let codigo: any = "'12345";
console.log(codigo);
let largo: number = (codigo as string).length;
console.log(largo);

//Sintaxis antigua <>
let codigo2 : any = "6789";
console.log(codigo2);
let largo2 : number = (<string>codigo2).length;
console.log(largo2);
