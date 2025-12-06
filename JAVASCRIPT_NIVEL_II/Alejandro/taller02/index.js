"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// SE CREA UN OBJETO A PARTIR DE LA INTERFACE PEDIDO
const miPedido = {
    cliente: {
        id: "C-123",
        nombre: "Ana Gómez",
        email: "ana@gmail.com",
    },
    fecha: new Date(),
    productos: [
        [1, "Laptop", 1, 1200],
        [2, "Mouse", 2, 25.50]
    ],
    estado: "PENDIENTE",
    metodoPago: "TARJETA",
    total: 1251
};
console.warn("Contenido de mi Pedido");
console.error("Datos del cliente");
console.log("Id:", miPedido.cliente.id);
console.log("Nombre:", miPedido.cliente.nombre);
console.log("Email:", miPedido.cliente.email);
console.error("Fecha:");
console.log(miPedido.fecha);
console.log("PRODUCTOS:");
for (let index = 0; index < miPedido.productos.length; index++) {
    console.log(miPedido.productos[index]?.[0]);
    console.log(miPedido.productos[index]?.[1]);
    console.log(miPedido.productos[index]?.[2]);
    console.log(miPedido.productos[index]?.[3]);
}
console.log(`Estado: ${miPedido.estado}`);
console.log("Metodo de Pago: ", miPedido.metodoPago);
console.log("Total", miPedido.total);
console.log("-----");
console.log("MODELO DE DATOS COMPLEJOS");
const tecladoMecanico = {
    // Propiedades del Producto
    id: 901,
    nombre: 'Teclado Mecánico Pro',
    precio: 99.99,
    // Propiedades del Proveedor
    nombreEmpresa: "Tech Suplies Inc.",
    contactoEmail: "support@tech.com",
    // Propiedades adicionales de intersección
    stockActual: 50,
    categoria: 'OFICINA',
    // Movimientos
    movimientos: [
        [new Date('2025-10-01'), 'ENTRADA', 100],
        [new Date('2025-10-05'), 'SALIDA', 50],
    ]
};
console.log(`Productos: ${tecladoMecanico.nombre} | Stock: ${tecladoMecanico.stockActual}`);
console.log(`Categoria: ${tecladoMecanico.categoria}`);
console.log(`Ultimo Movimiento: ${tecladoMecanico.movimientos[1]?.[1]} de ${tecladoMecanico.movimientos[1]?.[2]} unidades`);
//# sourceMappingURL=index.js.map