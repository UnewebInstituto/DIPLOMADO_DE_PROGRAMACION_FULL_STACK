"use strict";
// CLASES POO
Object.defineProperty(exports, "__esModule", { value: true });
class cuentaBancaria {
    // Tipado de Propiedades (Atributos)
    numeroCuenta;
    saldo;
    // Constructor tipado
    constructor(numero, saldoInicial) {
        this.numeroCuenta = numero;
        this.saldo = saldoInicial;
    }
    // Metodo Tipado
    depositar(cantidad) {
        this.saldo += cantidad;
        logearAccion(`Deposito de ${cantidad}`);
    }
    obtenerSaldo() {
        return this.saldo;
    }
}
class Usuario {
    id;
    nombre;
    token;
    fechaCreacion;
    constructor(id, nombre, token, // Solo accesible por esta clase y sus subclases
    fechaCreacion = new Date() // No se puede reaccinar
    ) {
        this.id = id;
        this.nombre = nombre;
        this.token = token;
        this.fechaCreacion = fechaCreacion;
    } // Constructor sin acciones, sólo tipo de datos
    getId() {
        return this.id;
    }
}
// DECLARACION DE FUNCIONES
function calcularIva(precioBase, tasaIva) {
    return precioBase * tasaIva;
}
function logearAccion(accion) {
    console.log(`[LOG] acción realizada: ${accion}`);
}
function formatearMoneda(cantidad, simbolo) {
    if (simbolo) {
        return `${simbolo}${cantidad.toFixed(2)}`;
    }
    else {
        return `${cantidad.toFixed(2)}`;
    }
}
function calcularImpuesto(monto, tasa = 0.16) {
    return monto * tasa;
}
function procesarResultado(estado) {
    if (estado === EstadoCarga.EXITO) {
        return `Datos Cargados correctamente`;
    }
    else if (estado === EstadoCarga.ERROR) {
        return `Hubo un fallo en la carga`;
    }
    else {
        return `Hubo un estado de la carga desconocido`;
    }
}
// DECLARACION DE VARIABLES
var Direccion;
(function (Direccion) {
    Direccion[Direccion["Norte"] = 0] = "Norte";
    Direccion[Direccion["Este"] = 1] = "Este";
    Direccion[Direccion["Sur"] = 2] = "Sur";
    Direccion[Direccion["Oeste"] = 3] = "Oeste"; // 3
})(Direccion || (Direccion = {}));
var EstadoCarga;
(function (EstadoCarga) {
    EstadoCarga["CARGANDO"] = "LOADING";
    EstadoCarga["EXITO"] = "SUCCESS";
    EstadoCarga["ERROR"] = "FAILED";
})(EstadoCarga || (EstadoCarga = {}));
// CUERPO DEL PROYECTO
const ivaTotal = calcularIva(100, 0.16);
console.log(`RESULTADO CALCULO IVA: ${ivaTotal}`);
logearAccion(`RESULTADO CALCULO IVA: ${ivaTotal}`);
console.log(formatearMoneda(50.5));
console.log(formatearMoneda(50.5, '$'));
console.log(calcularImpuesto(200));
console.log(calcularImpuesto(200, 0.10));
console.log("------");
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
let irA = Direccion.Norte;
logearAccion(`Valor de Direccion: ${irA}`);
let estadoActual = EstadoCarga.EXITO;
logearAccion(`Valor de Estado Actual: ${estadoActual}`);
console.log("------");
logearAccion(`Valor de Carga: ${procesarResultado(EstadoCarga.EXITO)}`);
logearAccion(`Valor de Carga: ${procesarResultado(EstadoCarga.ERROR)}`);
logearAccion(`Valor de Carga: ${procesarResultado(EstadoCarga.CARGANDO)}`);
//# sourceMappingURL=index.js.map