-- Creacion de la base de datos del catalogo 
create database bd_catalogo_gabriel;

-- Conexion a la base de datos 
USE bd_catalogo_gabriel; 

-- creacion de tablas 
create table roles (

     id integer primary key, 
     nombre varchar(50),
     descripcion text
     
);

create table etiquetas(

    id integer primary key, 
     nombre varchar(50),
     descripcion text
 
);

create table categorias(

    id integer primary key, 
     nombre varchar(50),
     descripcion text
 
);

create table usuarios(

    id integer primary key, 
     nombre varchar(50),
     apellido varchar(50),
     correo varchar(100) unique,
     clave varchar(255)
     

);

create table usuarios_roles(
    usuario_id integer,
    rol_id integer,
    primary key(usuario_id, rol_id),
    foreign key(usuario_id) references usuarios(id) on update cascade,
    foreign key(rol_id) references roles(id) on update cascade 
);

create table productos (
    id integer primary key,
    categoria_id integer,
    nombre varchar(50),
    precio numeric(13,2),
    cantidad integer,
    descrpcion text,
    foreign key(categoria_id) references categorias(id)
    on update cascade
);

create table imagenes(
    id integer primary key,
    producto_id integer,
    archivo text, 
    foreign key(producto_id) references productos(id)
    on update cascade    
);

create table calificaciones(
    in integer primary key;
    usuario_id integer,
    producto_id integer,
    calificacion integer check ( calificacion between 1 and 5),
    fecha_hora datetime  default current_timestamp
    foreign key(usuario_id) references usuarios(id) on update cascade,
    foreign key(producto_id) references productos(id) on update cascade

);

create table productos_etiquetas(
producto_id integer,
etiqueta_id integer,
primary key(producto_id, etiqueta_id),
foreign key(producto_id) references productos(id) on update cascade, 
foreign key(etiqueta_id) references etiquetas(id) on update cascade
);




-- Inserts para la tabla 'roles'
INSERT INTO roles (id, nombre, descripcion) VALUES
(1, 'Administrador', 'Control total sobre el sistema'),
(2, 'Vendedor', 'Gestiona productos y ventas'),
(3, 'Cliente', 'Compra productos y deja calificaciones');

-- Inserts para la tabla 'etiquetas'
INSERT INTO etiquetas (id, nombre, descripcion) VALUES
(1, 'oferta', 'Productos con descuento'),
(2, 'nuevo', 'Productos recién agregados'),
(3, 'mas vendido', 'Los productos más populares'),
(4, 'organico', 'Productos de origen orgánico');

-- Inserts para la tabla 'categorias'
INSERT INTO categorias (id, nombre, descripcion) VALUES
(1, 'Electrónica', 'Dispositivos y gadgets electrónicos'),
(2, 'Moda', 'Ropa, calzado y accesorios'),
(3, 'Hogar', 'Artículos para el hogar y decoración'),
(4, 'Libros', 'Libros de ficción y no ficción');

-- Inserts para la tabla 'usuarios'
INSERT INTO usuarios (id, nombre, apellido, correo, clave) VALUES
(1, 'Carlos', 'Gómez', 'carlos.gomez@example.com', 'clave123'),
(2, 'María', 'López', 'maria.lopez@example.com', 'pass456'),
(3, 'Juan', 'Pérez', 'juan.perez@example.com', 'mi_clave_segura'),
(4, 'Ana', 'Martínez', 'ana.martinez@example.com', 'ana1234');

-- Inserts para la tabla 'usuarios_roles'
-- Carlos es Administrador y Vendedor
INSERT INTO usuarios_roles (usuario_id, rol_id) VALUES
(1, 1),
(1, 2),
(2, 3), -- María es Cliente
(3, 3), -- Juan es Cliente
(4, 3); -- Ana es Cliente

-- Inserts para la tabla 'productos'
INSERT INTO productos (id, categoria_id, nombre, precio, cantidad, descripcion) VALUES
(1, 1, 'Smartphone X', 799.99, 50, 'Smartphone de última generación con cámara de alta resolución.'),
(2, 2, 'Camiseta de algodón', 19.50, 200, 'Camiseta 100% algodón, disponible en varios colores.'),
(3, 3, 'Set de sartenes antiadherentes', 85.00, 30, 'Juego de sartenes de 3 piezas para cocina.'),
(4, 4, 'El Quijote', 15.75, 150, 'Edición de bolsillo de la obra maestra de Cervantes.'),
(5, 1, 'Auriculares Bluetooth', 45.90, 100, 'Auriculares inalámbricos con cancelación de ruido.');

-- Inserts para la tabla 'imagenes'
INSERT INTO imagenes (id, producto_id, archivo) VALUES
(1, 1, 'smartphone_x_vista_frontal.jpg'),
(2, 1, 'smartphone_x_caja.jpg'),
(3, 2, 'camiseta_roja.jpg'),
(4, 3, 'sartenes_pack.jpg'),
(5, 4, 'el_quijote_portada.jpg'),
(6, 5, 'auriculares_blancos.jpg');

-- Inserts para la tabla 'calificaciones'
INSERT INTO calificaciones (id, usuario_id, producto_id, calificacion, fecha_hora) VALUES
(1, 2, 1, 5, '2023-10-26 10:30:00'), -- María califica Smartphone
(2, 3, 1, 4, '2023-10-26 11:00:00'), -- Juan califica Smartphone
(3, 4, 2, 5, '2023-10-26 12:15:00'), -- Ana califica Camiseta
(4, 2, 3, 3, '2023-10-26 13:40:00'), -- María califica Sartenes
(5, 3, 5, 5, '2023-10-26 14:00:00'), -- Juan califica Auriculares
(6, 4, 4, 5, '2023-10-26 15:05:00'), -- Ana califica El Quijote
(7, 2, 5, 4, '2023-10-26 16:00:00'); -- María califica Auriculares


INSERT INTO productos_etiquetas (producto_id, etiqueta_id) VALUES
(1, 2), -- Smartphone X -> 'nuevo'
(1, 3), -- Smartphone X -> 'mas vendido'
(2, 1), -- Camiseta de algodón -> 'oferta'
(3, 1), -- Set de sartenes antiadherentes -> 'oferta'
(4, 3), -- El Quijote -> 'mas vendido'
(5, 2); -- Auriculares Bluetooth -> 'nuevo'


-- Consulta combinada entre las tablas productos, categorias y etiquetas 
select productos.nombre,
    productos.precio,
    productos.cantidad,
    categorias.nombre,
    categorias.descripcion,
    etiquetas.nombre,
    etiquetas.descripcionfrom productos, categorias, etiquetas, productos_etiquetas 
    where productos.categoria_id = categorias.id and
        productos_etiquetas.producto_id = producto.id and 
        productos_etiquetas.etiqueta_id = etiquetas.id;


-- Consulta combinada entre las tablas productos, categorias y etiquetas 
-- usando alias 

select A.nombre as producto,
       A.precio,
       A.cantidad,
       B.nombre as categoria,
       B.descripcion,
       C.nombre as etiqueta,
       C.descripcion
       from productos as A, categorias as B, etiquetas as C, productos_etiquetas as D
       where A.categoria_id = B.id and 
             D.producto_id = A.id and
             D.etiqueta_id = C.id;


-- creacion de vista  a partir de consulta combinada 
create view vista_productos as 
select A.nombre as producto,
       A.precio,
       A.cantidad,
       B.nombre as categoria,
       B.descripcion as descripcion_categoria,
       C.nombre as etiqueta,
       C.descripcion as descripcion_etiqueta
       from productos as A, categorias as B, etiquetas as C, productos_etiquetas as D
       where A.categoria_id = B.id and 
             D.producto_id = A.id and
             D.etiqueta_id = C.id;































































































































