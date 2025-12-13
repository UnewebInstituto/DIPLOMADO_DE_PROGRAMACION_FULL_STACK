import type { User } from "./Usuario.js";
import { DEFAULT_ID } from "./Usuario.js";
import * as untyped from 'untyped-library';

// También se puede importar sólo el tipo
// de la dependencia a incluir
// import type{User as UsuarioTipo} from "./Usuario";

// Declaracion de variable global
declare var API_KEY:string

// Creación del objeto
const nuevoUsuario: User = {id:DEFAULT_ID, nombre:'invitado'};

console.log("ID:",nuevoUsuario.id);
console.log("NOMBRE:",nuevoUsuario.nombre);

console.log("Condicional Types");

type EsArray<T> = T extends any[]?true:false;

type A = EsArray<number[]>;
type B = EsArray<string>;
