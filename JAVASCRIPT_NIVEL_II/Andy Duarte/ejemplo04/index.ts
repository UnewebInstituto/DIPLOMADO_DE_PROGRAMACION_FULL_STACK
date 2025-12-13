function identidad<T>(arg: T): T { 
return arg; 
} 
// Uso explícito (TypeScript infiere el tipo de todas formas) 
let output1 = identidad<string>("Hola Mundo"); // output1 es de tipo string 
let output2 = identidad<number>(123);         
// output2 es de tipo number 
// Uso por inferencia (el mejor enfoque) 
let output3 = identidad("TypeScript"); // T se infiere como string 
let output4 = identidad(true);   

//multiples parametros
function getPropiedad<T, K extends keyof T>(obj: T, key: K) { 
return obj[key]; }

function obtenerNombre<T extends ConNombre>(objeto: T): string { 
return objeto.nombre; 
} 
 
// Función decoradora (Class Decorator) 
function Auditable<T extends { new(...args: any[]): {} }>(Constructor: T) { 
return class extends Constructor { 
fechaRegistro = new Date(); 
} 
}

interface Producto {
    id: number;
    nombre: string;
    precio: number;
}

//interfaces y clases 
interface  RespuestaApi<T>{
    codigo:number;
    mensaje:string;
    //T define el tipo de datos contenidos (ej user[]´,produc,string)
    data:T
}

interface ConNombre { 
nombre: string; 
}

//clase 
class Contenedor<T>{ 
    private elemento:T[] = []; 

    agregar(item:T):void{ 
        this.elemento.push(item); 
    }

    obtener(index:number):T| undefined{ 
        return this.elemento[index]; 
    } 
}

@Auditable 
class Empleado { 
nombre: string = "Desconocido"; 
}

const emp = new Empleado() as Empleado & { fechaRegistro: Date }; 
//uso para respuesta que devuelve un array de string
const respStrings: RespuestaApi<string[]> = { 
    codigo: 200, 
    mensaje: "OK", 
    data: ["item1", "item2"] 
};

console.log(output1, typeof(output1));
console.log(output2, typeof(output2));
console.log(output3, typeof(output3));
console.log(output4, typeof(output4));
console.log("----------------------------------------")

//casos multiples parametros
// --- Ejemplos de Uso ---

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

console.log(`Nombre: ${nombreDeUsuario}, Edad: ${edadDeUsuario}, Condicion: ${condicionDeUsuario}`);

console.log("----------------------------------------")
const productos: Producto[] = [
    { id: 1, nombre: "Laptop", precio: 1200 },
    { id: 2, nombre: "Mouse", precio: 25 },
    { id: 3, nombre: "Teclado", precio: 75 }
];

/**
 * Función para obtener un array de valores de una propiedad específica 
 * de un array de objetos.
 * * @param arr El array de objetos (tipo genérico T[])
 * @param key La clave de la propiedad a extraer (tipo K extends keyof T)
 * @returns Un array de los valores de esa propiedad (tipo T[K][])
 */
function getPropiedadesDeArray<T, K extends keyof T>(arr: T[], key: K): T[K][] {
    return arr.map(obj => obj[key]);
}

// Obtener solo los nombres de los productos
const nombres = getPropiedadesDeArray(productos, "nombre");
// nombres es de tipo 'string[]'
console.log("Nombres:", nombres); 
// Salida: Nombres: [ 'Laptop', 'Mouse', 'Teclado' ]

// Obtener solo los precios de los productos
const precios = getPropiedadesDeArray(productos, "precio");
// precios es de tipo 'number[]'
console.log("Precios:", precios); 
// Salida: Precios: [ 1200, 25, 75 ]
console.log("Nombres y Precios:", nombres,precios); 


const valorCodigo = getPropiedad(respStrings,"codigo")
const valorMensaje = getPropiedad(respStrings,"mensaje")
const valorData = getPropiedad(respStrings,"data");


console.log("----------------------------------------")


console.log(valorCodigo)
console.log(valorMensaje)
console.log(valorData)
console.log("----------------------------------------")

const contenedorNumeros = new Contenedor<number>();
contenedorNumeros.agregar(42); 
contenedorNumeros.agregar(24); 
contenedorNumeros.agregar(84); 
console.log(contenedorNumeros)
console.log("----------------------------------------")

let persona = { nombre: "Ana", edad: 30 }; 
console.log(obtenerNombre(persona)); // "Ana" 

console.log("----------------------------------------")
 
console.log(emp.fechaRegistro); // La clase ahora tiene esta propiedad

console.log("----------------------------------------")
