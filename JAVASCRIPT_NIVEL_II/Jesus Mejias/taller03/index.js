"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// Funciones
function logearAccion(accion) {
    console.log(`[LOG] acción realizada: ${accion}`);
}
// Declaración de clases
class ServicioDatos {
    // Declaración privada para asegurar que la clase sólo pueda
    // modificarlo internamente
    apiUrl = "https://api.ejemplo.com/v1/";
    status = Status.DESCONECTADO;
    // Métodos tipados
    conectar() {
        this.status = Status.CONECTADO;
        logearAccion("Servicio Conectado");
        return CodigoError.OK;
    }
    // Parámetro opcional y valor de retorno
    obtenerRecurso(endpoint, id) {
        if (this.status !== Status.CONECTADO) {
            return CodigoError.ERROR_INTERNO;
        }
        const url = this.apiUrl + endpoint;
        if (!id) {
            return `Recursos obtenidos de: ${url}`;
        }
        // Simulación de búsqueda (si el id es 99 falla)
        if (id === 99) {
            return CodigoError.RECURSO_NO_ENCONTRADO;
        }
        return `Recurso (ID: ${id}) obtenido de: ${url}`;
    }
}
// Declaración de variables
var CodigoError;
(function (CodigoError) {
    CodigoError[CodigoError["OK"] = 200] = "OK";
    CodigoError[CodigoError["RECURSO_NO_ENCONTRADO"] = 404] = "RECURSO_NO_ENCONTRADO";
    CodigoError[CodigoError["ERROR_INTERNO"] = 500] = "ERROR_INTERNO";
})(CodigoError || (CodigoError = {}));
;
var Status;
(function (Status) {
    Status[Status["CONECTADO"] = 0] = "CONECTADO";
    Status[Status["DESCONECTADO"] = 1] = "DESCONECTADO";
    Status[Status["EN_MANTENIMIENTO"] = 2] = "EN_MANTENIMIENTO";
})(Status || (Status = {}));
// Prueba de la clase
const servicio = new ServicioDatos();
servicio.conectar();
// Prueba 1: Petición exitosa con parámetro opcional
const lista = servicio.obtenerRecurso("usuarios");
logearAccion(`[Resultado lista]: ${lista}`);
// Prueba 2: Petición exitosa con id
const usuario = servicio.obtenerRecurso("usuarios", 10);
logearAccion(`[Resultado lista]: ${usuario}`);
// Prueba 3: Petición que simula el error 404
const error404 = servicio.obtenerRecurso("usuarios", 99);
if (error404 === CodigoError.RECURSO_NO_ENCONTRADO) {
    logearAccion(`[Error] Falló al obtener el recurso. Código: ${error404}`);
}
//# sourceMappingURL=index.js.map