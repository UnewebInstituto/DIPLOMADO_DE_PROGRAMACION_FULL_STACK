"use strict";
// DECLARACION DE FUNCIONES 
Object.defineProperty(exports, "__esModule", { value: true });
function logearAccion(accion) {
    console.log(`[LOG] acción realizada: ${accion}`);
}
// DECLARACION DE CLASES
class ServiciosDatos {
    // Declaracion privada para asegurar que la clase sólo pueda modificarlo internamente
    apiUrl = 'https://apiejemplo.com/v1/';
    status = Status.DESCONECTADO;
    // METODOS TIPADOS
    conectar() {
        this.status = Status.CONECTADO;
        logearAccion("Servicion Conectado");
        return CodigoError.OK;
    }
    // PARAMETRO OPCIONAL Y VALOR DE RETORNO
    obtenerRecurso(endpoint, id) {
        if (this.status != Status.CONECTADO) {
            return CodigoError.ERROR_INTERNO;
        }
        const url = this.apiUrl + endpoint;
        if (!id) {
            return `Recursos obtenidos de: ${url}`;
        }
        // SIMULACION DE BUSQUEDA (SI EL id es 99 falla)
        if (id === 99) {
            return CodigoError.RECURSO_NO_ENCONTRADO;
        }
        return `Recurso (ID: ${id}) obtenido de: ${url}`;
    }
}
class TaskManager {
    task = [];
    lastId = 0;
    // METODO TIPADO
    crearTarea(titulo, prioridad, fechaLimite) {
        this.lastId++;
        const nuevaTarea = {
            id: this.lastId,
            titulo: titulo,
            estado: EstadoTarea.PENDIENTE,
            prioridad: prioridad,
            fechaCracion: new Date(),
            fechaLimite: fechaLimite
        };
        this.task.push(nuevaTarea);
        return nuevaTarea;
    }
    actualizarEstado(id, nuevoEstado) {
        const tareaEncontrada = this.task.find(t => t.id === id);
        if (tareaEncontrada) {
            tareaEncontrada.estado = nuevoEstado;
            return true;
        }
        return false;
    }
    obtenerTareasPorEstado(estado) {
        return this.task.filter(t => t.estado === estado);
    }
    // protected logearAccionProtegido(mensaje:string):void {
    logearAccionProtegido(mensaje) {
        console.log(`[LOG- ${new Date().toLocaleTimeString()}] ${mensaje}`);
    }
    obternerTodasLasTareas() {
        return this.task;
    }
}
// DECLARACION DE VARIABLES
var CodigoError;
(function (CodigoError) {
    CodigoError[CodigoError["OK"] = 200] = "OK";
    CodigoError[CodigoError["RECURSO_NO_ENCONTRADO"] = 404] = "RECURSO_NO_ENCONTRADO";
    CodigoError[CodigoError["ERROR_INTERNO"] = 500] = "ERROR_INTERNO";
})(CodigoError || (CodigoError = {}));
var Status;
(function (Status) {
    Status[Status["CONECTADO"] = 0] = "CONECTADO";
    Status[Status["DESCONECTADO"] = 1] = "DESCONECTADO";
    Status[Status["EN_MANTENIMIENTO"] = 2] = "EN_MANTENIMIENTO";
})(Status || (Status = {}));
var EstadoTarea;
(function (EstadoTarea) {
    EstadoTarea["PENDIENTE"] = "PENDIENTE";
    EstadoTarea["EN_PROGRESO"] = "EN_PROGRESO";
    EstadoTarea["COMPLETADA"] = "COMPLETADA";
    EstadoTarea["CANCELADA"] = "CANCELADA";
})(EstadoTarea || (EstadoTarea = {}));
var Prioridad;
(function (Prioridad) {
    Prioridad[Prioridad["BAJA"] = 0] = "BAJA";
    Prioridad[Prioridad["MEDIA"] = 1] = "MEDIA";
    Prioridad[Prioridad["ALTA"] = 3] = "ALTA"; // Asignado
})(Prioridad || (Prioridad = {}));
// PRUEBA DE LA CLASE
const servicio = new ServiciosDatos();
servicio.conectar();
// PRUEBA 1: PETICION EXITOSA CON PARAMETROS OPCIONAL
const lista = servicio.obtenerRecurso("Usuarios");
logearAccion(`[Resultado lista]: ${lista}`);
// PRUEBA 2: PETICION EXITOSA CON ID
const usuario = servicio.obtenerRecurso("Usuarios", 10);
logearAccion(`[Resultado lista]: ${usuario}`);
// PRUEBA 3: PETICION QUE SIMULA EL ERROR 404
const error404 = servicio.obtenerRecurso("Usarios", 99);
if (error404 === CodigoError.RECURSO_NO_ENCONTRADO) {
    logearAccion(`[ERROR]: Falló al obtener el recurso. Código ${error404}`);
}
logearAccion(`Iniciando Gestor de Tareas`);
const gestor = new TaskManager();
const tarea1 = gestor.crearTarea('Diseñal la interfaz de usuario:', Prioridad.ALTA);
const tarea2 = gestor.crearTarea('Corregir errores menores:', Prioridad.MEDIA);
const tarea3 = gestor.crearTarea('Documentación final:', Prioridad.BAJA);
logearAccion(`Creadas ${gestor.obternerTodasLasTareas().length} tareas`);
logearAccion(`Estado inical de la tarea 1: ${tarea1.estado}`);
gestor.actualizarEstado(tarea1.id, EstadoTarea.EN_PROGRESO);
logearAccion(`Estado actualizado de la tarea 1: ${tarea1.estado}`);
gestor.actualizarEstado(tarea3.id, EstadoTarea.COMPLETADA);
const pendiente = gestor.obtenerTareasPorEstado(EstadoTarea.PENDIENTE);
const completadas = gestor.obtenerTareasPorEstado(EstadoTarea.COMPLETADA);
logearAccion(`Tareas Pendientes: ${pendiente.length} (ID: ${pendiente.map(t => t.id).join(', ')})`);
logearAccion(`Tareas Completadas: ${completadas.length} (ID: ${completadas.map(t => t.id).join(', ')})`);
//# sourceMappingURL=index.js.map