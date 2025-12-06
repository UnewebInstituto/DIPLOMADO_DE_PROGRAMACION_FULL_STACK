// CLASES POO

class cuentaBancaria {
    // Tipado de Propiedades (Atributos)
    numeroCuenta:string;
    saldo:number;

    // Constructor tipado
    constructor(numero:string, saldoInicial:number){
        this.numeroCuenta = numero;
        this.saldo = saldoInicial;
    }

    // Metodo Tipado
    depositar(cantidad:number):void {
        this.saldo += cantidad;
        logearAccion(`Deposito de ${cantidad}`);
    }

    obtenerSaldo():number {
        return this.saldo;
    }
}

class Usuario {
    constructor(
        private id:number,
        public nombre:string,
        protected token:string, // Solo accesible por esta clase y sus subclases
        public readonly fechaCreacion: Date = new Date() // No se puede reaccinar
    ) {} // Constructor sin acciones, sólo tipo de datos

    getId():number {
        return this.id;
    }

    // Atributo fechaCreacion no puede ser modificado dado que se trata de solo lectura (readonly)
    // cambiarFecha():void {
    //     this.fechaCreacion = new Date();
    // }
}

// DECLARACION DE FUNCIONES

function calcularIva(precioBase:number, tasaIva:number):number {
    return precioBase * tasaIva;
}

function logearAccion(accion:string):void {
    console.log(`[LOG] acción realizada: ${accion}`);
}

function formatearMoneda(cantidad:number, simbolo?:string):string {
    if (simbolo) {
        return `${simbolo}${cantidad.toFixed(2)}`;
    } else {
        return `${cantidad.toFixed(2)}`;
    }
}

function calcularImpuesto(monto:number, tasa:number=0.16):number {
    return monto * tasa;
}

function procesarResultado(estado:EstadoCarga):string {
    if (estado === EstadoCarga.EXITO) {
        return `Datos Cargados correctamente`;
    } else if (estado === EstadoCarga.ERROR){
        return `Hubo un fallo en la carga`;
    } else {
        return `Hubo un estado de la carga desconocido`;
    }
}

// DECLARACION DE VARIABLES

enum Direccion {
    Norte, // 0
    Este, // 1
    Sur, // 2
    Oeste // 3
}

enum EstadoCarga {
    CARGANDO = 'LOADING',
    EXITO = 'SUCCESS', 
    ERROR = 'FAILED'
}

// CUERPO DEL PROYECTO

const ivaTotal = calcularIva(100, 0.16);
console.log(`RESULTADO CALCULO IVA: ${ivaTotal}`);

logearAccion(`RESULTADO CALCULO IVA: ${ivaTotal}`);

console.log(formatearMoneda(50.5));
console.log(formatearMoneda(50.5,'$'));

console.log(calcularImpuesto(200));
console.log(calcularImpuesto(200, 0.10));

console.log("------")

// Instancia de la clase cuenta bancaria
const miBanco = new cuentaBancaria('CTA-AHORRO-0001', 100);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);
miBanco.depositar(250);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);

console.log("------");

// Instancia de la clase usuario
const user = new Usuario(1, 'Alice', 'xyz-123');

logearAccion(`Nombre del usuario: ${user.nombre}`);
logearAccion(`Fecha Creación del usuario: ${user.fechaCreacion}`);
logearAccion(`Id del usuario: ${user.getId()}`);

console.log("------");

let irA:Direccion = Direccion.Norte;
logearAccion(`Valor de Direccion: ${irA}`);

let estadoActual:EstadoCarga = EstadoCarga.EXITO;
logearAccion(`Valor de Estado Actual: ${estadoActual}`);

console.log("------");
logearAccion(`Valor de Carga: ${procesarResultado(EstadoCarga.EXITO)}`);
logearAccion(`Valor de Carga: ${procesarResultado(EstadoCarga.ERROR)}`);
logearAccion(`Valor de Carga: ${procesarResultado(EstadoCarga.CARGANDO)}`);