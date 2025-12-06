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
    if(estado === EstadoCarga.EXITO){
        return `Datos cargados correctamente`
    }else(estado === EstadoCarga.ERROR);{
        return `Hubo en fallo en la carga`;
    }

}
//Declaracion de clases
class cuentaBancaria{
    //1.tipado de propiedades(atributos)
    numeroCuenta:string;
    saldo:number;

    //2.constructor tipado(metodo especial para incializar la clase)
    constructor(numero:string, saldoInicial:number){
        this.numeroCuenta = numero;
        this.saldo = saldoInicial;
    }

    //3.Metodo tipado
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
        protected token:string, //Solo accesible por esta clase y sus sub clases
        public readonly fechaCreacion: Date = new Date() //No se puede reasignar
    ){} //Constructor sin acciones, solo tipo de datos

    getId():number{
        return this.id;
    }
    /* El atributo fechaCreacion no se puede modificar ya que es readonly
    cambiarFecha():void{
        this.fechaCreacion = new Date()
    }
    */
}

//Declaracion de variables
enum Direccion{
    Norte, //0
    Este,  //1
    Sur,   //2
    Oeste, //3
}

enum EstadoCarga{
    CARGANDO = "LOADING",
    EXITO = "SUCCES",
    ERROR = "FAILED",
}

//Cuerpo prncipal del programa
const ivaTotal = calcularIVA(100, 0.16);
console.log(`Resultado Cálculo de IVA: ${ivaTotal}`);

logearAccion(`Resultado Cálculo de IVA: ${ivaTotal}`);

console.log(formatearMoneda(50.5));
console.log(formatearMoneda(50.5,'€'));
console.log(calcularImpuesto(200));
console.log(calcularImpuesto(200,0.10));

// Instancia de la clase CuentaBancaria
const miBanco = new cuentaBancaria('CTA-AHO-0001',100);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);
miBanco.depositar(250);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);

//Insatancia de la clase Usuario
const user = new Usuario(1, 'Alice', 'xyz-123');
logearAccion(`Nombre del usuario: ${user.nombre}`);
logearAccion(`Fecha de creacion del usuario: ${user.fechaCreacion}`);
logearAccion(`ID del usuario: ${user.getId()}`);

let irA:Direccion = Direccion.Norte;
logearAccion(`Valor de direccion: ${irA}`);

let estadoActual:EstadoCarga = EstadoCarga.EXITO;
logearAccion(`Valor de esado actual: ${estadoActual}`);

logearAccion(`Valor de esado actual ${procesarResultado(EstadoCarga.EXITO)}`);
logearAccion(`Valor de esado actual ${procesarResultado(EstadoCarga.ERROR)}`);