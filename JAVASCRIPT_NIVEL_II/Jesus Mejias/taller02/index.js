"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
//Se crea un objeto a partor de la interface Pedido
const miPedido = {
    cliente: {
        id: "c-123",
        nombre: "Ana, Gomez",
        email: "ana@mail.com",
    },
    fecha: new Date(),
    productos: [
        [1, "laptop", 1, 1200.00],
        [2, "mouse", 2, 25.50],
    ],
    estado: "Pendiente",
    metodoPago: "TARJETA",
    total: 1251.00
};
console.warn("contenido de miPedido");
console.error("Datos del cliente");
console.log("Id", miPedido.cliente.id);
console.log("Nombre:", miPedido.cliente.nombre);
console.log("Email:", miPedido.cliente.email);
console.error("Fecha:");
console.log(miPedido.fecha);
console.error("Productos");
let sumaTotal = 0;
for (let index = 0; index < miPedido.productos.length; index++) {
    console.log(miPedido.productos[0]?.[0]);
    console.log(miPedido.productos[0]?.[1]);
    console.log(miPedido.productos[0]?.[2]);
    console.log(miPedido.productos[0]?.[3]);
    //sumaTotal = sumaTotal + (miPedido.productos[0]?.[2]*miPedido.productos[0]?.[3]);
}
console.log("Estado: ", miPedido.estado);
console.log("Metodo de pago: ", miPedido.metodoPago);
console.log("Total: ", miPedido.total);
console.log("-----MODELO DE DATOS COMPLEJOS-----");
const tecladoMecanico = {
    //Propiedades del producto
    id: 901,
    nombre: 'teclado mecanico pro',
    precio: 99.99,
    //Propiedades del proveedor
    nombreEmpresa: 'TechSupplies inc.',
    contactoEmail: "support@tech.com",
    //Propiedades adicionales de interseccion
    stockActual: 50,
    categoria: 'Oficina',
    //Movimientos
    //movimientos:[Fecha, tipo de Movimiento,  cantidad]
    movimientos: [
        [new Date("2025-10-01"), 'Entrada', 100],
        [new Date("2025-10-01"), 'Salida', 50],
    ]
};
console.log(`producto:${tecladoMecanico.nombre}|Stock: ${tecladoMecanico.stockActual}`);
console.log(`categoria: ${tecladoMecanico.categoria}`);
console.log(`Ultimo movimientos ${tecladoMecanico.movimientos[1]?.[1]} de ${tecladoMecanico.movimientos[1]?.[2]} Unidades`);
//# sourceMappingURL=index.js.map