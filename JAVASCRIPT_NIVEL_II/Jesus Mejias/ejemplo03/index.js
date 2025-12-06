"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function calcularIVA(precioBase, tasaIVA) {
    return precioBase * tasaIVA;
}
function logearAccion(accion) {
    console.log(`[LOG] acción realizada: ${accion}`);
}
function formatearMoneda(cantidad, simbolo) {
    if (simbolo) {
        return `${simbolo} ${cantidad.toFixed(2)}`;
    }
    return `${cantidad.toFixed(2)}`;
}
function calcularImpuesto(monto, tasa = 0.16) {
    return monto * tasa;
}
//Declaracion de clases
class cuentaBancaria {
    //1.tipado de propiedades(atributos)
    numeroCuenta;
    saldo;
    //2.constructor tipado(metodo especial para incializar la clase)
    constructor(numero, saldoInicial) {
        this.numeroCuenta = numero;
        this.saldo = saldoInicial;
    }
    //3.Metodo tipado
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
    constructor(id, nombre, token, //Solo accesible por esta clase y sus sub clases
    fechaCreacion = new Date() //No se puede reasignar
    ) {
        this.id = id;
        this.nombre = nombre;
        this.token = token;
        this.fechaCreacion = fechaCreacion;
    } //Constructor sin acciones, solo tipo de datos
    getId() {
        return this.id;
    }
}
//Declaracion de variables
var Direccion;
(function (Direccion) {
    Direccion[Direccion["Norte"] = 0] = "Norte";
    Direccion[Direccion["Este"] = 1] = "Este";
    Direccion[Direccion["Sur"] = 2] = "Sur";
    Direccion[Direccion["Oeste"] = 3] = "Oeste";
})(Direccion || (Direccion = {}));
var EstadoCarga;
(function (EstadoCarga) {
    EstadoCarga["CARGANDO"] = "LOADING";
    EstadoCarga["EXITO"] = "SUCCES";
    EstadoCarga["ERROR"] = "FAILED";
})(EstadoCarga || (EstadoCarga = {}));
//Cuerpo prncipal del programa
const ivaTotal = calcularIVA(100, 0.16);
console.log(`Resultado Cálculo de IVA: ${ivaTotal}`);
logearAccion(`Resultado Cálculo de IVA: ${ivaTotal}`);
console.log(formatearMoneda(50.5));
console.log(formatearMoneda(50.5, '€'));
console.log(calcularImpuesto(200));
console.log(calcularImpuesto(200, 0.10));
// Instancia de la clase CuentaBancaria
const miBanco = new cuentaBancaria('CTA-AHO-0001', 100);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);
miBanco.depositar(250);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);
//Insatancia de la clase Usuario
const user = new Usuario(1, 'Alice', 'xyz-123');
logearAccion(`Nombre del usuario: ${user.nombre}`);
logearAccion(`Fecha de creacion del usuario: ${user.fechaCreacion}`);
logearAccion(`ID del usuario: ${user.getId()}`);
let irA = Direccion.Norte;
logearAccion(`Valor de direccion: ${irA}`);
let estadoActual = EstadoCarga.EXITO;
logearAccion(`Valor de esado actual: ${irA}`);
//# sourceMappingURL=index.js.map