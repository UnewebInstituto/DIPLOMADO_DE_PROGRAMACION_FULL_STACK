"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// Se crea un objeto a partir de la interface Pedido
const miPedido = {
    cliente: {
        id: "C-123",
        nombre: "Ana Gómez",
        email: "ana@mail.com",
    },
    fecha: new Date(),
    productos: [
        [1, "Laptop", 1, 1200.00],
        [2, "Mouse", 2, 25.50]
    ],
    estado: "PENDIENTE",
    metodoPago: "TARJETA",
    total: 1251.00
};
console.warn("Contenido de miPedido");
console.error("Datos del cliente");
console.log("Id:", miPedido.cliente.id);
console.log("Nombre:", miPedido.cliente.nombre);
console.log("Email:", miPedido.cliente.email);
console.error("Fecha:");
console.log(miPedido.fecha);
console.error("Productos");
for (let index = 0; index < miPedido.productos.length; index++) {
    console.log(miPedido.productos[index]?.[0]);
    console.log(miPedido.productos[index]?.[1]);
    console.log(miPedido.productos[index]?.[2]);
    console.log(miPedido.productos[index]?.[3]);
}
console.log("Estado:", miPedido.estado);
console.log("Método de Pago:", miPedido.metodoPago);
console.log("Total:", miPedido.total);
//# sourceMappingURL=index.js.map