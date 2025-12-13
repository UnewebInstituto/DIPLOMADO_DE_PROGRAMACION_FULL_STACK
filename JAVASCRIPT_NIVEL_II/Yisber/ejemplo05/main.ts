import type { User } from "./usuario.js";
import { DEFAULT_ID } from "./usuario.js";

// se puede importar sólo el tipo de la dependencia a incluir
// import type{User as UsuarioTipo} from "./Usuario";


//declaracion de variable global
declare var API_KEY: string;

//declaracion de modulo para libreria sin tipos
//(declarado en src\typings\typings.d.ts)
declare module 'untyped-library'; 

// Creación del objeto
const nuevoUsuario: User = {id:DEFAULT_ID, nombre:'invitado'};

console.log("ID:",nuevoUsuario.id);
console.log("NOMBRE:",nuevoUsuario.nombre);


///tipo condicionales
console.log("condicional types");
type EsArray<T> = T extends any[] ? true : false; 
type A = EsArray<number[]>; // A es true 
type B = EsArray<string>;   // B es false


