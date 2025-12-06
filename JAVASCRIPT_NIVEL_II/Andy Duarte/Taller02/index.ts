
interface Cliente { 
id: string; 
nombre: string; 
email: string; 
telefono?: string; // Opcional 
} 

// [ID del Producto, Nombre, Cantidad, Precio Unitario] 
type LineaPedido = [number, string, number, number]; 

type EstadoPedido = "PENDIENTE" | "ENVIADO" | "ENTREGADO" | "CANCELADO"; 

interface Pedido { 
cliente: Cliente; 
fecha: Date; 
productos: LineaPedido[]; // Un array de las tuplas LineaPedido 
estado: EstadoPedido; 
metodoPago: "TARJETA" | "EFECTIVO" | "TRANSFERENCIA"; // Unión de literales 
total: number; 
}

const miPedido: Pedido = { 
cliente: { 
id: "C-123", 
nombre: "Ana Gómez", 
email: "ana@mail.com" 
}, 

fecha: new Date(), 
productos: [ 
[1, "Laptop", 1, 1200.00], 
[2, "Mouse", 2, 25.50] 
], 
estado: "PENDIENTE", 
metodoPago: "TARJETA", 
total: 1251.00 // 1200 + 51 
};

console.warn("contenido de mi pedido");
console.error("datos del cliente");
console.log("id:",miPedido.cliente.id);
console.log("nombre:",miPedido.cliente.nombre);
console.log("email:",miPedido.cliente.email);
console.error("fecha:");
console.log(miPedido.fecha);
console.error("productos:");
let sumaTotal:number = 0;
//let Cantidad:number = 0;
//let monto:number = 0;
for (let index = 0; index < miPedido.productos.length; index++) {
    
    console.log(miPedido.productos[index]?.[0]);
    console.log(miPedido.productos[index]?.[1]);
    console.log(miPedido.productos[index]?.[2]);
    console.log(miPedido.productos[index]?.[3]);
  //  sumaTotal = sumaTotal + miPedido.productos[index]?.[2]*miPedido.productos[index]?.[3];
}
console.log("estado:",miPedido.estado);
console.log("metodo de pago",miPedido.metodoPago)
console.log("total:",miPedido.total);



// Prueba de la seguridad del tipo: 
// miPedido.estado = "DEVUELTO"; // Error! El compilador nos protege. 
miPedido.estado = "ENVIADO"; // Válido 

console.log("modelo de datos complejos")
// 1. Interfaz para el objeto base: Producto 
interface Producto { 
id: number; 
nombre: string; 
// La descripción es opcional 
descripcion?: string;  
precio: number; 
} 
// 2. Interfaz para la información del Proveedor 
interface Proveedor { 
nombreEmpresa: string; 
contactoEmail: string; 
}

// 3. Tupla para el registro de movimiento de inventario 
// [Fecha, Tipo de Movimiento ('ENTRADA' | 'SALIDA'), Cantidad] 
type Movimiento = [Date, 'ENTRADA' | 'SALIDA', number];



// 4. Tipo de Unión para la clasificación del producto 
type Categoria = "Electrónica" | "Hogar" | "Oficina" |"Alimentos";


// 5. Tipo de Intersección: Inventario 
// Un artículo de inventario debe tener las propiedades de Producto Y de Proveedor 
type ArticuloInventario = Producto & Proveedor & { 
stockActual: number; 
categoria: Categoria;
movimientos: Movimiento[]; // Un array de las tuplas de movimiento 
}; 

// 6. Instanciación del objeto final 
const tecladoMecanico: ArticuloInventario = { 
    // Propiedades de Producto 
    id: 901, 
    nombre: "Teclado Mecánico Pro", 
    precio: 99.99, 
     
    // Propiedades de Proveedor 
    nombreEmpresa: "Tech Supplies Inc.", 
    contactoEmail: "support@tech.com", 
     
    // Propiedades adicionales de Intersección 
    stockActual: 50, 
    categoria: "Oficina", //  Válido, es un valor de 'Categoria' 
     
    // Movimientos (Array de Tuplas) 
    movimientos: [ 
        // [Fecha, Tipo de Movimiento, Cantidad] 
        [new Date('2025-10-01'), 'ENTRADA', 100], 
        [new Date('2025-10-15'), 'SALIDA', 50], 
    ] 
}; 
 
console.log(`Producto: ${tecladoMecanico.nombre} | Stock: ${tecladoMecanico.stockActual}`); 
console.log(`Categoría: ${tecladoMecanico.categoria}`); 
console.log(`Último Movimiento: ${tecladoMecanico.movimientos[1]?.[1]} de ${tecladoMecanico.movimientos[1]?.[2]} unidades.`); 