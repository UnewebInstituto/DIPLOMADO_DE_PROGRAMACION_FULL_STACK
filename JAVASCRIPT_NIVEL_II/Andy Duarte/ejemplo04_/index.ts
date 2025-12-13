//funciones
function revertirArray<T>(items: T[]): T[] { 
return items.reverse(); 
}


//const
const nombres = ["Alice", "Bob", "Charlie"]; 
const nombresRevertidos = revertirArray(nombres); // Tipo: string[]
// Prueba con numbers 
const numeros = [99, 78, 115, 23]; 
const numerosRevertidos = revertirArray(numeros); // Tipo: number[] 

console.log("Nombres revertidos:", nombresRevertidos); 
console.log("Números revertidos:", numerosRevertidos); 



function registrarTiempo(target: any, propertyKey: string, descriptor: PropertyDescriptor) { 
const metodoOriginal = descriptor.value; 
// Reemplazamos el método original con una nueva implementación 
descriptor.value = function (...args: any[]) { 
const t1 = Date.now(); 
const resultado = metodoOriginal.apply(this, args); 
const t2 = Date.now(); 
console.log(`\n@LOGGER: El método '${propertyKey}' tardó ${t2 - t1}ms.`); 
return resultado; 
}; 
return descriptor; 
}

// Implementación de la Clase 
class Calculadora { 
@registrarTiempo // Aplicamos el decorador al método 
sumarLentamente(a: number, b: number): number { 
// Simulación de una tarea pesada 
let i = 0; 
while (i < 1e7) { i++; }  
return a + b; 
    } 
} 
const calc = new Calculadora(); 
calc.sumarLentamente(10, 20);
console.log(calc.sumarLentamente(10,20));
