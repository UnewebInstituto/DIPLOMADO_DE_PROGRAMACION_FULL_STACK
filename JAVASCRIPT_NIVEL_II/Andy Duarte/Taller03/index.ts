// Funciones
function logearAccion(accion:string):void{
    console.log(`[LOG] acción realizada: ${accion}`);
}

// Declaración de clases
class ServicioDatos{
    // Declaración privada para asegurar que la clase sólo pueda
    // modificarlo internamente
    private readonly apiUrl: string = "https://api.ejemplo.com/v1/";
    private status:Status = Status.DESCONECTADO;

    // Métodos tipados
    conectar():CodigoError{
        this.status = Status.CONECTADO;
        logearAccion("Servicio Conectado");
        return CodigoError.OK;
    }

    // Parámetro opcional y valor de retorno
    obtenerRecurso(endpoint:string, id?:number):string|CodigoError{
        if (this.status !== Status.CONECTADO){
            return CodigoError.ERROR_INTERNO;
        }

        const url = this.apiUrl + endpoint;

        if (!id){
            return `Recursos obtenidos de: ${url}`;
        }

        // Simulación de búsqueda (si el id es 99 falla)
        if (id === 99){
            return CodigoError.RECURSO_NO_ENCONTRADO;
        }

        return `Recurso (ID: ${id}) obtenido de: ${url}`;
    }
}

class TaskManager{
    private tasks: Tarea[] = [];
    private lastId: number = 0;

    public crearTarea(titulo:string, prioridad:Prioridad,fechaLimite?:Date):Tarea{
        this.lastId++;

        const nuevaTarea: Tarea={
            id:this.lastId,
            titulo: titulo,
            estado: EstadoTarea.PENDIENTE, // estado inicial forzado por el enum
            prioridad:prioridad,
            fechaCreacion: new Date(),
            fechaLimite:fechaLimite
        };

        this.tasks.push(nuevaTarea);
        return nuevaTarea;
    }

    public actualizarEstado(id: number, nuevoEstado: EstadoTarea): boolean { 
        const tareaEncontrada = this.tasks.find(t => t.id === id); 
         
        if (tareaEncontrada) { 
            

            tareaEncontrada.estado = nuevoEstado; 
            return true; 
        } 
        return false;
    }


    public obtenerTareasPorEstado(estado: EstadoTarea): Tarea[] { 
        return this.tasks.filter(t => t.estado === estado); 
    } 

    public logearAccionPublic(mensaje: string): void { 
        console.log(`[LOG - ${new Date().toLocaleTimeString()}] ${mensaje}`); 
    }

    public obtenerTodasLasTareas(): readonly Tarea[] { 
    // readonly previene la modificación externa del array retornado 
        return this.tasks;
    }  
}


interface Tarea{
    id:number;
    titulo:string;
    // Las propiedades 'estado' y 'prioridad' deben ser uno de los valores del Enum
    estado: EstadoTarea;
    prioridad: Prioridad;
    fechaCreacion:Date;
    fechaLimite?:Date|undefined; // Propiedad opcional
}





// Declaración de variables
enum CodigoError{
    OK = 200,
    RECURSO_NO_ENCONTRADO = 404,
    ERROR_INTERNO = 500
};

enum Status{
    CONECTADO,
    DESCONECTADO,
    EN_MANTENIMIENTO
}

enum EstadoTarea{
    PENDIENTE = "PENDIENTE",
    EN_PROGRESO = "EN_PROGRESO",
    COMPLETADA = "COMPLETADA",
    CANCELADA = "CANCELADA"
}

enum Prioridad{
    BAJA,     // 0 (Numérico por omisión)
    MEDIA,    // 1
    ALTA = 3  // (Numérico valor asignado)
}

// Prueba de la clase

const servicio = new ServicioDatos();
servicio.conectar();

// Prueba 1: Petición exitosa con parámetro opcional
const lista = servicio.obtenerRecurso("usuarios");

logearAccion(`[Resultado lista]: ${lista}`);

// Prueba 2: Petición exitosa con id
const usuario = servicio.obtenerRecurso("usuarios",10);
logearAccion(`[Resultado lista]: ${usuario}`);

// Prueba 3: Petición que simula el error 404
const error404 = servicio.obtenerRecurso("usuarios",99);

if (error404 === CodigoError.RECURSO_NO_ENCONTRADO){
    logearAccion(`[Error] Falló al obtener el recurso. Código: ${error404}`);
}



logearAccion(`---- INICIANDO GESTOR DE TAREAS ----`);
const gestor = new TaskManager();

// 1. Creación de tareas usando los Enums 
const tarea1 = gestor.crearTarea("Diseñar la interfaz de usuario", Prioridad.ALTA); 
const tarea2 = gestor.crearTarea("Corregir errores menores", Prioridad.MEDIA); 
const tarea3 = gestor.crearTarea("Documentación final", Prioridad.BAJA); 
 
gestor.logearAccionPublic(`Creadas ${gestor.obtenerTodasLasTareas().length} tareas.`); 

// 2. Actualización de estado usando el Enum 
logearAccion(`\nEstado inicial de Tarea 1: ${tarea1.estado}`); 
gestor.actualizarEstado(tarea1.id, EstadoTarea.EN_PROGRESO); 
logearAccion(`Estado actualizado de Tarea 1: ${tarea1.estado}`);

// 3. Intento de actualizar con un string no válido (Fallo de compilación) 
// gestor.actualizarEstado(tarea2.id, "TERMINADO");  
// ERROR: El argumento debe ser de tipo 'EstadoTarea'. 

// 4. Filtrado de tareas por estado 
gestor.actualizarEstado(tarea3.id, EstadoTarea.COMPLETADA); 
 
const pendientes = gestor.obtenerTareasPorEstado(EstadoTarea.PENDIENTE); 
const completadas = gestor.obtenerTareasPorEstado(EstadoTarea.COMPLETADA); 
 
logearAccion(`Tareas Pendientes: ${pendientes.length} (ID: ${pendientes.map(t => t.id).join(', ')})`); 
logearAccion(`Tareas Completadas: ${completadas.length} (ID: ${completadas.map(t => t.id).join(', ')})`); 