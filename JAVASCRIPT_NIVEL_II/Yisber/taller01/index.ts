console.log('Hola Mundo');

// Declaración explicita
let cargo:string = "Director";
let antiguedad:number = 3;
let esProfesional:boolean = true;

// Declaración implicita
let empresa = "UNEWEB";
empresa = "Uneweb Instituto";
let piso = 10;
piso = 11;
let esEmpresa = true;
esEmpresa = false;

//Declaracion de la Funcion
function sumar(n1:number, n2:number):number{
    return (n1+n2);
}

function resultado():void{
    console.log(sumar(numero1, numero2));
}
let numero1:number = 2;
let numero2:number = 5;

resultado();

function mostrarDatos(nombre:string, edad:number, cargo:any):void{
    console.log('NOMBRE:'+nombre, ", EDAD:"+edad, ", CARGO:"+cargo);
}
mostrarDatos("ana", 60, "Auditor");

function mostrarDatos1(nombre:string, edad:number, cargo:unknown):void{
    if (typeof(cargo) === 'string'){
        console.log('NOMBRE:'+nombre, ", EDAD:"+edad, ", CARGO:"+cargo);
    }else{
        console.log("Error: Tipo de dato, recibido para el cargo no es válido");
    }
}
mostrarDatos("ANA", 60, "Auditor");
mostrarDatos1("YOLANDA", 25, "Asistente");
mostrarDatos1("YOLANDA", 60, 12345);


//parte II Taller

const curso:string = "Typescript Fundamental";
const horas:number = 4;

function bienvenida(nombre:string, tema:string):void{
    console.log(`Hola ${nombre}, Bienvenido al curso de ${tema}`);
}
bienvenida("ESTUDIANTE PROACTIVO", curso);
console.log(`Duración de hoy ${horas} horas`);


//PARTE III

console.log("\n--- Ejercicio A: Any ---");
let datosSinControl: any = 100;
//  TypeScript lo permite, ya que 'any' desactiva la comprobación.
// Esto FALLARÁ en tiempo de ejecución (runtime error).
// Un número no tiene el método toUpperCase.
try {
const resultado = datosSinControl.toUpperCase();
console.log("Resultado: ", resultado);
} catch (error) {
console.error("Error capturado en tiempo de ejecución (¡peligro!):", error);
}
// Ahora se reasigna a otro tipo
datosSinControl = "typescript";
console.log("Valor reasignado y usado: ", datosSinControl.toUpperCase());

//parte IV

console.log("\n--- Ejercicio B: Unknown ---");
let datosDesconocidos: unknown = 100;

if (typeof datosDesconocidos === 'string') {

console.log("Es un string, OK: ", datosDesconocidos.toUpperCase());
} else if (typeof datosDesconocidos === 'number') {

console.log("Es un número, OK: ", datosDesconocidos.toFixed(2));
} else {
console.log("Tipo no manejado.");
}