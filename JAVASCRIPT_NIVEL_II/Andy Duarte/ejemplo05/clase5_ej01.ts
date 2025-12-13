// Función de ejemplo que solo acepta arrays si la comprobación es 'true' (solo para fines ilustrativos)
type EsArray<T> = T extends any[]?true:false;

type A = EsArray<number[]>;
type B = EsArray<string>;

function procesarSoloArrays<T>(data: T): void {
    
    type EsUnArray = EsArray<T>;
    
    // Este bloque de código solo verifica la lógica, la comprobación se hace en el tipo
    if (typeof data === 'object' && data !== null && Array.isArray(data)) {
        console.log(`Procesando: Tipo resuelto es 'true'. Longitud: ${data.length}`);
    } else {
        console.log("No es un array o el tipo resuelto es 'false'.");
    }
}

// Para ver los tipos resueltos:
console.log(`El tipo A se resuelve a: ${'true'}`);
console.log(`El tipo B se resuelve a: ${'false'}`);

// Lógica en runtime (simulando la comprobación de tipo):
procesarSoloArrays([1, 2, 3]); // Procesando: Tipo resuelto es 'true'. Longitud: 3
procesarSoloArrays("Hola");   // No es un array o el tipo resuelto es 'false'.