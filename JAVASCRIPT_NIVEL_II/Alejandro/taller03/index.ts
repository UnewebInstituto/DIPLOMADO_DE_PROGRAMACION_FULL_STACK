// DECLARACION DE FUNCIONES 

function logearAccion(accion:string):void {
    console.log(`[LOG] acción realizada: ${accion}`);
}

// DECLARACION DE CLASES

class ServiciosDatos {

    // Declaracion privada para asegurar que la clase sólo pueda modificarlo internamente

    private readonly apiUrl:string = 'https://apiejemplo.com/v1/';
    private status:Status = Status.DESCONECTADO;

    // METODOS TIPADOS
    conectar():CodigoError {
        this.status = Status.CONECTADO;
        logearAccion("Servicion Conectado");
        return CodigoError.OK;
    }

    // PARAMETRO OPCIONAL Y VALOR DE RETORNO
    obtenerRecurso(endpoint:string, id?:number):string | CodigoError {
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

class TaskManager{
    private task:Tarea[] = [];
    private lastId:number = 0;

    // METODO TIPADO
    public crearTarea(titulo:string, prioridad:Prioridad, fechaLimite?:Date):Tarea {
        this.lastId++;

        const nuevaTarea:Tarea = {
            id: this.lastId,
            titulo: titulo,
            estado: EstadoTarea.PENDIENTE,
            prioridad:prioridad,
            fechaCracion: new Date(),
            fechaLimite:fechaLimite
        };

        this.task.push(nuevaTarea);
        return nuevaTarea;
    }

    public actualizarEstado(id:number, nuevoEstado:EstadoTarea):boolean {
        const tareaEncontrada = this.task.find(t => t.id === id);

        if (tareaEncontrada) {
            tareaEncontrada.estado = nuevoEstado;
            return true;
        }
        return false;
    }

    public obtenerTareasPorEstado(estado:EstadoTarea):Tarea[] {
        return this.task.filter(t => t.estado === estado);
    }

    // protected logearAccionProtegido(mensaje:string):void {
    public logearAccionProtegido(mensaje:string):void {
        console.log(`[LOG- ${new Date().toLocaleTimeString()}] ${mensaje}`);
    }

    public obternerTodasLasTareas():readonly Tarea[] {
        return this.task;
    }
}

interface Tarea {
    id:number;
    titulo:string;
    // LAS PROPIEDADES 'ESTADO' y 'PRIORIDAD' deben ser unos de los valores del enum
    estado:EstadoTarea;
    prioridad:Prioridad;
    fechaCracion: Date;
    fechaLimite?: Date | undefined; // OPCIONAL 
}

// DECLARACION DE VARIABLES

enum CodigoError {
    OK = 200,
    RECURSO_NO_ENCONTRADO = 404,
    ERROR_INTERNO = 500
}

enum Status {
    CONECTADO,
    DESCONECTADO,
    EN_MANTENIMIENTO
}

enum EstadoTarea {
    PENDIENTE = "PENDIENTE",
    EN_PROGRESO = "EN_PROGRESO",
    COMPLETADA = "COMPLETADA",
    CANCELADA = "CANCELADA"
}

enum Prioridad {
    BAJA, // 0 (númerico por omisión)
    MEDIA, // 1
    ALTA = 3 // Asignado
}

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