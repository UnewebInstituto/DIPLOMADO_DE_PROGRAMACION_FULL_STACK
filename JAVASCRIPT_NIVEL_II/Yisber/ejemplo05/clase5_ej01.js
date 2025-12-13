function procesarSoloArrays(data) {
    // Este bloque de código solo verifica la lógica, la comprobación se hace en el tipo
    if (typeof data === 'object' && data !== null && Array.isArray(data)) {
        console.log(`Procesando: Tipo resuelto es 'true'. Longitud: ${data.length}`);
    }
    else {
        console.log("No es un array o el tipo resuelto es 'false'.");
    }
}
// Para ver los tipos resueltos:
console.log(`El tipo A se resuelve a: ${'true'}`);
console.log(`El tipo B se resuelve a: ${'false'}`);
// Lógica en runtime (simulando la comprobación de tipo):
procesarSoloArrays([1, 2, 3]); // Procesando: Tipo resuelto es 'true'. Longitud: 3
procesarSoloArrays("Hola"); // No es un array o el tipo resuelto es 'false'.
export {};
//# sourceMappingURL=clase5_ej01.js.map