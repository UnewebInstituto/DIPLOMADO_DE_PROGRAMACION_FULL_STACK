"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// Declaración de funciones
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
function procesarResultado(estado) {
    if (estado === EstadoCarga.EXITO) {
        return `Datos cargados correctamente`;
    }
    else if (estado === EstadoCarga.ERROR) {
        return `Hubo un fallo en la carga`;
    }
    else {
        return `Hubo un estado de la carga desconocido`;
    }
}
// Declaración de clases
class CuentaBancaria {
    // 1. Tipado de Propiedades (atributos)
    numeroCuenta;
    saldo;
    // 2. Constructor Tipado (método especial para inicializar la clase)
    constructor(numero, saldoInicial) {
        this.numeroCuenta = numero;
        this.saldo = saldoInicial;
    }
    // 3. Método Tipado
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
    constructor(id, nombre, token, // Sólo accesible por esta clase y sus sub clases
    fechaCreacion = new Date() // No se puede reasignar
    ) {
        this.id = id;
        this.nombre = nombre;
        this.token = token;
        this.fechaCreacion = fechaCreacion;
    } // Constructor sin acciones, sólo tipos de datos
    getId() {
        return this.id;
    }
}
// Declaración de variables
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
    EstadoCarga["EXITO"] = "SUCCESS";
    EstadoCarga["ERROR"] = "FAILED";
})(EstadoCarga || (EstadoCarga = {}));
// Cuerpo principal del programa
const ivaTotal = calcularIVA(100, 0.16);
console.log(`Resultado Cálculo de IVA: ${ivaTotal}`);
logearAccion(`Resultado Cálculo de IVA: ${ivaTotal}`);
console.log(formatearMoneda(50.5));
console.log(formatearMoneda(50.5, '€'));
console.log(calcularImpuesto(200));
console.log(calcularImpuesto(200, 0.10));
// Instancia de la clase CuentaBancaria
const miBanco = new CuentaBancaria('CTA-AHO-0001', 100);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);
miBanco.depositar(250);
logearAccion(`Consulta de saldo: ${miBanco.obtenerSaldo()}`);
// Instancia de la clase Usuario
const user = new Usuario(1, 'Alice', 'xyz-123');
logearAccion(`Nombre del usuario: ${user.nombre}`);
logearAccion(`Fecha creación del usuario: ${user.fechaCreacion}`);
logearAccion(`Id del Usuario: ${user.getId()}`);
let irA = Direccion.Norte;
logearAccion(`Valor de Direccion: ${irA}`);
let estadoActual = EstadoCarga.EXITO;
logearAccion(`Valor de estadoActual: ${estadoActual}`);
logearAccion(`Valor de estadoActual: ${procesarResultado(EstadoCarga.EXITO)}`);
logearAccion(`Valor de estadoActual: ${procesarResultado(EstadoCarga.ERROR)}`);
logearAccion(`Valor de estadoActual: ${procesarResultado(EstadoCarga.CARGANDO)}`);
//# sourceMappingURL=index.js.map