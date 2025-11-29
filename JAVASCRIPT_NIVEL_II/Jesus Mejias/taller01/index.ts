console.log('Hola mundo');
console.log('----------------');

//Explicito
let crago:string = 'Director';
let antiguedad: number = 3;
let profesional: boolean = true;

//Implicito
let empresa = 'Uneweb';
empresa = 'Instituto Uneweb';
let piso = 10;
piso = 11;
let esEmpresa = true;
esEmpresa = false;

//Declaracion de funcion
function sumar(n1:number, n2:number):number{
    return(n1+n2);
};

function resultado():void{
  console.log(sumar(numero1, numero2));
}

let numero1:number = 2;
let numero2:number = 5;

resultado();

function mostrarDatos(nombre:string, edad:number, cargo:any):void{
    console.log('NOMBRE:'+nombre, ", EDAD:"+edad, ", CARGO:"+cargo);
}

function mostrarDatos1(nombre:string, edad:number, cargo:unknown):void{
  if (cargo === String){
    console.log('Nombre: '+nombre, 'Edad: '+edad, 'Cargo: '+cargo);
  } else {
    console.log('Error: tipo de dato recibido para el dato no es valido');
  }
  
}

mostrarDatos('Ana', 60, 'Auditoria');
mostrarDatos1('Yolanda', 25, 'asistente');

//parte 2 del taller

const curso:string = "typescript Fundamental";
const horas:number = 4;

function bienvenida(nombre:string, tema:string):void {
  console.log(`Hola ${nombre}, bienvenido al curso de ${tema}`);
}

bienvenida("Estudiante proactivo!", curso);
console.log(`Duracion de hoy ${horas} horas`);

//parte 3 del taller
console.log('\n--- Ejercicio A:Any ---');
let datosSinControl:any = 100;

try{
const resultado = datosSinControl.toUpperCase();
console.log(resultado);
}catch(error){
  console.error('Error capturado en tiempod en ejecuccion (!): ');
}

//Se reasigna a otro tipo
datosSinControl = 'Typescript';
console.log('Valor asignado y usado: ', datosSinControl.toUpperCase());

//Parte 4 
console.log('\n--- Ejercicio B:Unknow ---');
//let DatosDesconocidos:unknown = 100;
let DatosDesconocidos:unknown = 'Es un numero';

if (typeof DatosDesconocidos === "string"){
    console.log("Es un String:", DatosDesconocidos.toLocaleUpperCase());
}else if (typeof DatosDesconocidos === "number"){
    console.log("Es un número:", DatosDesconocidos.toFixed(2));
}else{
    console.log("Tipo de dato no manejador");
}
