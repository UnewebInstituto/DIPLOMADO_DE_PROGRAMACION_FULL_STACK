// Declaración de funciones
function calcularIVA(precioBase:number, tasaIVA:number):number{
    return precioBase*tasaIVA;
}

function logearAccion(accion:string):void{
    console.log(`[LOG] acción realizada: ${accion}`);
}

function formatearMoneda(cantidad:number, simbolo?:string):string {
    if (simbolo){
        return `${simbolo} ${cantidad.toFixed(2)}`;
    }
    return `${cantidad.toFixed(2)}`;
}

function calcularImpuesto(monto:number, tasa:number=0.16):number{
    return monto * tasa;
}

function procesarResultado(estado:EstadoCarga):string{
    if (estado === EstadoCarga.EXITO){
        return `Datos cargados correctamente`;
    }else if (estado === EstadoCarga.ERROR){
        return `Hubo un fallo en la carga`;
    }else{
        return `Hubo un estado de la carga desconocido`;
    }
}

// Declaración de clases
class CuentaBancaria{
    // 1. Tipado de Propiedades (atributos)
    numeroCuenta:string;
    saldo:number;

    // 2. Constructor Tipado (método especial para inicializar la clase)
    constructor(numero:string, saldoInicial:number){
        this.numeroCuenta = numero;
        this.saldo = saldoInicial;
    }

    // 3. Método Tipado
    depositar(cantidad:number):void{
        this.saldo += cantidad;
        logearAccion(`Deposito de ${cantidad}`);
    }

    obtenerSaldo():number{
        return this.saldo;
    }
}

class Usuario{
    constructor(
        private id:number,
        public nombre:string,
        protected token:string, // Sólo accesible por esta clase y sus sub clases
        public readonly fechaCreacion: Date = new Date() // No se puede reasignar
    ){} // Constructor sin acciones, sólo tipos de datos

    getId():number{
        return this.id;
    }
    /**
     * El atributo fechaCreacion, no puede ser modificado dado que se trata
     * de sólo lectura "readonly"
    cambiarFecha():void{
        this.fechaCreacion = new Date()
    }
    */
}

// Declaración de variables
enum Direccion{
    Norte, // 0
    Este,  // 1
    Sur,   // 2
    Oeste, // 3
}

enum EstadoCarga{
    CARGANDO="LOADING",
    EXITO="SUCCESS",
    ERROR="FAILED",
}




// Cuerpo principal del programa
const ivaTotal = calcularIVA(100, 0.16);
console.log(`Resultado Cálculo de IVA: ${ivaTotal}`);

logearAccion(`Resultado Cálculo de IVA: ${ivaTotal}`);

console.log(formatearMoneda(50.5));
console.log(formatearMoneda(50.5,'€'));
console.log(calcularImpuesto(200));
console.log(calcularImpuesto(200,0.10));

// Instancia de la clase CuentaBancaria
const miBanco = new CuentaBancaria('CTA-AHO-0001',100);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);
miBanco.depositar(250);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);

// Instancia de la clase Usuario
const user = new Usuario(1, 'Alice', 'xyz-123');
logearAccion(`Nombre del usuario: ${user.nombre}`);
logearAccion(`Fecha creación del usuario: ${user.fechaCreacion}`);
logearAccion(`Id del Usuario: ${user.getId()}`);

let irA:Direccion = Direccion.Norte;
logearAccion(`Valor de Direccion: ${irA}`);

let estadoActual:EstadoCarga = EstadoCarga.EXITO;
logearAccion(`Valor de estadoActual: ${estadoActual}`);

logearAccion(`Valor de estadoActual: ${procesarResultado(EstadoCarga.EXITO)}`);
logearAccion(`Valor de estadoActual: ${procesarResultado(EstadoCarga.ERROR)}`);
logearAccion(`Valor de estadoActual: ${procesarResultado(EstadoCarga.CARGANDO)}`);
