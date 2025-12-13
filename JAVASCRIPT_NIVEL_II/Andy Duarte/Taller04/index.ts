/** 
* Función Genérica para fusionar dos objetos. 
* @param obj1 Primer objeto (Tipo T) 
* @param obj2 Segundo objeto (Tipo U) 
* @returns Un nuevo objeto que es la intersección de T y U (T & U) 
*/ 
function combinarObjetos<T extends object, U extends object>(obj1: T, obj2: U): T & U { 
// Usamos el spread operator de JavaScript para combinar las propiedades 
// y la aserción de tipo para garantizar el tipo de intersección. 
return { ...obj1, ...obj2 } as T & U; 
} 
// --- Prueba de la Función --- 
// 1. Definición de tipos de entrada 
const clienteBase = { id: 101, nombre: "Juan Pérez" }; // Infiere tipo { id: number, nombre: string } 
const infoContacto = { email: "juan@mail.com", telefono: "555-4321" }; // Infiere tipo { email: string, telefono: string } 
// 2. Llamada a la función genérica 
// TypeScript infiere el tipo de retorno como la unión de ambos tipos (intersección de propiedades). 
const clienteCompleto = combinarObjetos(clienteBase, infoContacto);  
console.log("--- 1. Genéricos ---"); 
console.log(`Email: ${clienteCompleto.email}`);      
console.log(`Nombre: ${clienteCompleto.nombre}`);    

/** 
 * Decorador de Método: Registra la hora y los argumentos cada vez que el método es llamado. 
 * target: El prototipo de la clase. 
 * propertyKey: El nombre del método (string). 
 * descriptor: Objeto que describe el método (donde está 'value'). 
 */ 
function LogLlamada(target: any, propertyKey: string, descriptor: PropertyDescriptor) { 
    const metodoOriginal = descriptor.value; // Guardamos la referencia a la implementación original 
     
    // 1. Reemplazamos la implementación del método 
    descriptor.value = function (...args: any[]) { 
        const timestamp = new Date().toLocaleTimeString(); 
        console.log(`\n@LOG [${timestamp}] -> Método: ${propertyKey} llamado con argumentos: [${args.join(', ')}]`); 
         
        // 2. Ejecutamos el método original 
        const resultado = metodoOriginal.apply(this, args); 
         
        // 3. Registramos el resultado del método 
        console.log(`@LOG [${timestamp}] -> Método: ${propertyKey} devolvió: ${JSON.stringify(resultado)}`); 
        return resultado; 
    }; 
     
    return descriptor; 
} 
 
// --- Implementación de la Clase --- 
 
class ProcesadorDatos { 
    // Definimos el método y aplicamos el decorador directamente encima 
    @LogLlamada  
    procesar(datos: string[], operacion: string): number { 
console.log(`[PROCESADOR] Ejecutando operación: ${operacion}`); 
// Simulación de lógica 
return datos.length * 2; 
} 
} 
// --- Prueba de la Clase Decorada --- 
console.log("\n--- 2. Decoradores ---"); 
const procesador = new ProcesadorDatos(); 
const resultado = procesador.procesar(["a", "b", "c"], "Conteo Doble"); 
console.log(`Resultado final: ${resultado}`); 