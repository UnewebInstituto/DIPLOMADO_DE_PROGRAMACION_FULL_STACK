interface Cliente{
    id:string;
    nombre:string;
    email:string;
    telefono?:string; //opcional
}

type LineaPedido = [number, string, number, number];

type EstadoPedido = "PENDIENTE"|"ENVIADO"|"ENTREGADO"|"CANCELADO";

interface Pedido{
    cliente:Cliente;
    fecha:Date;
    productos:LineaPedido[];
    estado:EstadoPedido;
    metodoPago:"TARJETA"|"EFECTIVO"|"TRANSFERENCIA";
    total:number;
}

// Se crea un objeto a partir de la interface Pedido
const miPedido:Pedido = {
    cliente:{
        id:"C-123",
        nombre:"Ana Gómez",
        email:"ana@mail.com",
    },
    fecha:new Date(),
    productos:[
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
    
    //const linea =  miPedido.productos[index];
    
    console.log(miPedido.productos[index]?.[0]);
    console.log(miPedido.productos[index]?.[1]);
    console.log(miPedido.productos[index]?.[2]);
    console.log(miPedido.productos[index]?.[3]);
    //sumaTotal = sumaTotal + miPedido.productos[index][2] * miPedido.productos[index][3];
    
    //console.log(linea[0]);
    //console.log(linea[1]);
    //console.log(linea[2]);
    //console.log(linea[3]);

}
console.log("Estado:",miPedido.estado);
console.log("Método de Pago:",miPedido.metodoPago);
console.log("Total:",miPedido.total);


console.log("MODELO DE DATOS COMPLEJOS");

// Declaración de la interface Producto
interface Producto{
    id:number;
    nombre:string;
    descripcion?:string;
    precio:number;
}

// Declaración de la interface Provvedor
interface Proveedor{
    nombreEmpresa:string;
    contactoEmail:string;
}

// Tupla para el registro de movimiento de Inventario
// [Fecha, Tipo de Movimiento('ENTRADA'|'SALIDA'),Cantidad]

type Movimiento = [Date, 'ENTRADA'|'SALIDA', number];

// Unión para clasificación de productos
type Categoria = "Electronica"|"Hogar"|"Oficina"|"Alimentos";

type ArticuloInventario = Producto & Proveedor & {
    stockActual: number;
    categoria: Categoria;
    movimientos: Movimiento[];
}

const tecladoMecanico: ArticuloInventario = {
    // Propiedades del Producto
    id:901,
    nombre:'Teclado Mecánico Pro',
    precio:99.99,

    // Propiedades del Proveedor
    nombreEmpresa:"Tech Suplies Inc.",
    contactoEmail:"support@tech.com",

    // Propiedades adicionales de intercección
    stockActual:50,
    categoria:'Oficina',

    // Movimientos
    // [Fecha, Tipo de Movimiento, Cantidad]
    movimientos:[
        [new Date('2025-10-01'),'ENTRADA',100],
        [new Date('2025-10-05'),'SALIDA',50],
    ]
};

console.log(`Producto: ${tecladoMecanico.nombre} | Stock: ${tecladoMecanico.stockActual}`);
console.log(`Categoría: ${tecladoMecanico.categoria}`);
console.log(`Último movimiento: ${tecladoMecanico.movimientos[1]?.[1]} de ${tecladoMecanico.movimientos[1]?.[2]} unidades`);









