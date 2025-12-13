// 1 solo parametro
function identidad<T>(arg:T):T {
    return arg;
}

// ******************************************************************************
// Multiples parametros
function getPropiedad<T, K extends keyof T>(obj:T, key:K){
    return obj[key];
}
// ****************************************************************************
function getPropiedadesDeArray<T, K extends keyof T>(arr: T[], key: K): T[K][] {
    return arr.map(obj => obj[key]);
}

function obtenerNombre<T extends ConNombre>(objeto:T):string {
    return objeto.nombre;
}

function revertirArray<T>(items:T[]):T[]{
    return items.reverse();
}

function registrarTiempo(target:any, propertyKey:string, descriptor:PropertyDescriptor) {
    const metodoOriginal= descriptor.value;

    // Reemplazamos el metodo original con una nueva implementacion
    descriptor.value = function (...args:any[]){
        const t1 = Date.now();
        const resultado = metodoOriginal.apply(this, args);

        const t2 = Date.now();
        console.log("--------");
        console.log(`\n@LOGER: El metodo '${propertyKey}' tarto ${t2 - t1}ms`);
        return resultado;
    };
    return descriptor;
}

class Calculadora {
    @registrarTiempo
    sumarLentamente(a:number, b:number):number{
        let i = 0;
        while (i < 1e7){
            i++;
        }
        return a+b;
    }
}

// Decoradores
function Auditable<T extends {new(...arg:any[]):{}}>(Constructor:T){
    return class extends Constructor{
        fechaRegistro = new Date();
    }
}

// Uso: Añade la propiedad 'fechaRegistro' a la clase

@Auditable
class Empleado{
    nombre:string = 'Desconocido';
}
//****************************************************************************

interface Producto {
    id: number;
    nombre: string;
    precio: number;
}

// ****************************************************************************

// Interfaces y clases
interface RespuestaApi<T>{
    codigo:number;
    mensaje:string;
    data:T;
}

const RespuestaString:RespuestaApi<string[]> = {
    codigo:100,
    mensaje:'Ok',
    data: ["item1", "item2"]
}

// Declaracion de clase
class Contenedor<T>{
    // atributos
    private elemento:T[] = [];
    // metodos
    agregar(item:T):void {
        this.elemento.push(item);
    }
    obtener(index:number):T | undefined {
        return this.elemento[index];
    }
}

interface ConNombre{
    nombre:string;    
}

// *******************************************************************************

let output1 = identidad<string>("Hola Mundo");
let output2 = identidad<number>(123);
let output3 = identidad("TypeScript");
let output4 = identidad(true);

console.log(output1, typeof(output1));
console.log(output2, typeof(output2));
console.log(output3, typeof(output3));
console.log(output4, typeof(output4));

// *************************************************************************

// casos multiples parametros
interface Persona {
    nombre: string;
    edad: number;
    activo: boolean;
}

const usuario: Persona = {
    nombre: "Alice",
    edad: 30,
    activo: true
};

const nombreDeUsuario = getPropiedad(usuario, "nombre");
const edadDeUsuario = getPropiedad(usuario, "edad");
const condicionDeUsuario = getPropiedad(usuario, "activo");

console.log("-------");
console.log("Nombre del usuario", nombreDeUsuario);
console.log("Edad del usuario", edadDeUsuario);
console.log("Condicion del usuario", condicionDeUsuario);

// *****************************************************************

const productos: Producto[] = [
    { id: 1, nombre: "Laptop", precio: 1200 },
    { id: 2, nombre: "Mouse", precio: 25 },
    { id: 3, nombre: "Teclado", precio: 75 }
];

console.log("-------");

const nombres = getPropiedadesDeArray(productos, "nombre");
console.log(nombres);

const precios = getPropiedadesDeArray(productos, "precio");
console.log(precios);

// **********************************************************************

const valorCodigo = getPropiedad(RespuestaString, "codigo");
const valorMensaje = getPropiedad(RespuestaString, "mensaje");
const valorData = getPropiedad(RespuestaString, "data");

console.log("-------");
console.log(valorCodigo);
console.log(valorMensaje);
console.log(valorData);

// ************************************************************************

// Instancia de la clase
const contenedorNumeros = new Contenedor<number>();
contenedorNumeros.agregar(42);
contenedorNumeros.agregar(24);
contenedorNumeros.agregar(84);

console.log("-------");
console.log(contenedorNumeros);

// ***************************************************************************

console.log("-------");
let persona = {nombre: 'Ana', edad: 30};
console.log(obtenerNombre(persona));

// ***************************************************************************

// Prueba de decoradores
const emp = new Empleado() as Empleado & {fechaRegistro:Date};
console.log("-------");
console.log("Nombre:", emp.nombre);
console.log("Fecha de registro:", emp.fechaRegistro);

// *************************************************************************

const nombresTaller = ["Alice", "Bob", "Charlie"];
const nombresRevertidos = revertirArray(nombresTaller);

console.log("-------");
console.log("Nombres en orden inverso:", nombresRevertidos);

const numerosTaller = [99, 78, 115, 23];
const numerosRevertidos = revertirArray(numerosTaller);
console.log("Numeros en orden inverso:", numerosRevertidos);

// *************************************************************************

const calc = new Calculadora();
console.log(calc.sumarLentamente(10,20));