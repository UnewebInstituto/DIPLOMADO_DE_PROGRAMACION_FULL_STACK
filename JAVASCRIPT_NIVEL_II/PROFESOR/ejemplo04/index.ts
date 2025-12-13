// Declaración de funciones
// 1 sólo parámetro
function identidad<T>(arg:T):T{
    return arg;
}

// ***  Explicación en clase4_ej01.txt ***
// Múltiples parámetros
function getPropiedad<T, K extends keyof T>(obj: T, key:K){
    return obj[key];
}
// *****************************************************
function getPropiedadesDeArray<T, K extends keyof T>(arr:T[], key:K):T[K][]{
    return arr.map(obj => obj[key]);
}

function obtenerNombre<T extends ConNombre>(objeto:T):string{
    return objeto.nombre;
}

function revertirArray<T>(items:T[]):T[]{
    return items.reverse();
}

function registrarTiempo(target:any, propertyKey:string, descriptor:PropertyDescriptor){
    const metodoOriginal = descriptor.value;

    // Reemplazamos el método original con una nueva implementación
    descriptor.value = function(...args:any[]){
        const t1 = Date.now();
        const resultado = metodoOriginal.apply(this, args);

        const t2 = Date.now();
        console.log(`\n@LOGGER: El método '${propertyKey}' tardó ${t2 - t1}ms`);
        return resultado;
    };
    return descriptor;
}

// Implementación de la Clase
class Calculadora{
    @registrarTiempo // Aplicamos el decorador al método
    sumarLentamente(a:number,b:number):number{
        // Simulación de una tarea pesada
        let i = 0;
        while (i < 1e7){
            i++;
        }
        return a+b;
    }
}


// Decoradores
function Auditable<T extends {new(...args:any[]):{}}>(Constructor:T){
    return class extends Constructor{
        fechaRegistro = new Date();
    }
}

// Uso: Añade la propiedad 'fechaRegistro' a la clase
@Auditable
class Empleado{
    nombre:string = 'Desconocido';
}

// *****************************************************
interface Producto {
    id: number;
    nombre: string;
    precio: number;
}
// *****************************************************

// Interfaces y clases
interface RespuestaApi<T>{
    codigo:number,
    mensaje:string,
    // T define el tipo de los datos contenidos (ej User[], Product, string)
    data:T
}

interface ConNombre{
    nombre:string;    
}

// Declaración de clase
class Contenedor<T>{
    // atributos
    private elemento:T[] = [];
    // métodos
    agregar(item:T):void{
        this.elemento.push(item);
    }
    obtener(index:number):T | undefined {
        return this.elemento[index];
    }
}


// Uso para respuesta que devuelve un array de string

const respStrings:RespuestaApi<string[]> = {
    codigo:200,
    mensaje:'OK',
    data:['item1','item2']
}



// Cuerpo principal del programa
let output1 = identidad<string>("Hola Mundo");
let output2 = identidad<number>(123);
let output3 = identidad("Typescript");
let output4 = identidad(true);

console.log(output1, typeof(output1));
console.log(output2, typeof(output2));
console.log(output3, typeof(output3));
console.log(output4, typeof(output4));

// Caso multiples parámetros
// ***  Explicación en clase4_ej01.txt ***
// --- Ejemplos de Uso ---
interface Persona {
    nombre: string;
    edad: number;
    activo: boolean;
}

// Se crea un objeto a partir de la clase interface Persona
const usuario: Persona ={
    nombre :"Alice",
    edad : 0, 
    activo : true
}
/**                   función
 *                       |   Se le pasa como parámetro el objeto
 *                       |             | Índice del valor a obtener
 *                       |             |        |
 *                       v             v        v
 */
const nombreDelUsuario = getPropiedad(usuario,"nombre");
const edadDelUsuario = getPropiedad(usuario,"edad");
const condicionDelUsuario = getPropiedad(usuario,"activo");

console.log("Nombre del usuario:",nombreDelUsuario);
console.log("Edad del usuario:",edadDelUsuario);
console.log("Condición del usuuario:",condicionDelUsuario);

// ******************************************************
const productos: Producto[]=[
    { id: 1, nombre: "Laptop", precio: 1200 },
    { id: 2, nombre: "Mouse", precio: 25 },
    { id: 3, nombre: "Teclado", precio: 75 }
];

// Obtener sólo los nombres de los productos
const nombres = getPropiedadesDeArray(productos,"nombre");
const precios = getPropiedadesDeArray(productos,"precio");

console.log(nombres);
console.log(precios);

// *************************************************
const valorCodigo = getPropiedad(respStrings,"codigo")
const valorMensaje = getPropiedad(respStrings, "mensaje")
const valorData = getPropiedad(respStrings, "data");

console.log("---");
console.log(valorCodigo);
console.log(valorMensaje);
console.log(valorData);

// Instancia de la clase
const contenedorNumeros = new Contenedor<number>();
contenedorNumeros.agregar(42);
contenedorNumeros.agregar(24);
contenedorNumeros.agregar(84);
console.log(contenedorNumeros);

//

let persona = {nombre:'Ana', edad:30};
console.log(obtenerNombre(persona));

// Prueba de decoradores
console.log("--- Prueba de Decoradores ---");
const emp = new Empleado() as Empleado & {fechaRegistro:Date};
console.log("Nombre:", emp.nombre);
console.log("Fecha de registro:",emp.fechaRegistro);

// Prueba de definición genérica
const nombresTaller = ["Alice", "Bob", "Charlie"];
const nombresRevertidos = revertirArray(nombresTaller);
console.log("Nombres en orden inverso:", nombresRevertidos);

const numerosTaller = [99, 78, 115, 23];
const numerosRevertidos = revertirArray(numerosTaller);
console.log("Números en orden inverso:",numerosRevertidos);

const calc = new Calculadora();
console.log(calc.sumarLentamente(10,20));



