import { DEFAULT_ID } from "./Usuario.js";
// Declarado en la ruta .src/typings/typings.d.ts
// declare module 'untyped-library';
// Prueba
import * as untyped from 'untyped-library';
// Ahora, 'untyped' será de tipo 'any' o puedes definirle tipos específicos dentro de la declaración.
// Creación del objeto
const nuevoUsuario = { id: DEFAULT_ID, nombre: 'invitado' };
console.log("ID:", nuevoUsuario.id);
console.log("NOMBRE:", nuevoUsuario.nombre);
// ****************************************************
console.log("Conditional Types");
//# sourceMappingURL=main.js.map