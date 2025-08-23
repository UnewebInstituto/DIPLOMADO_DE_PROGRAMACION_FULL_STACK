--Creacion de base de datos de catalogo
CREATE DATABASE bd_catalogo_jesus

USE bd_catalogo_jesus;

--Crear entidades y relaciones
CREATE TABLE roles(
    id integer primary key,
    nombre varchar(50),
    descripcion text
);

CREATE TABLE etiquetas(
    id integer primary key,
    nombre varchar(50),
    apellido varchar(50)
);

CREATE TABLE categorias(
    id integer primary key,
    nombre varchar(50),
    descripcion text(50)
);

CREATE TABLE usuarios(
    id integer primary key,
    nombre varchar(50),
    apellido varchar(50),
    correo varchar(100) unique,
    clave varchar(155)
);

CREATE TABLE usuarios_roles(
    usuario_id integer,
    rol_id integer,
    primary key(usuario_id, rol_id),
    foreign key(usuario_id) references usuarios(id) ON UPDATE CASCADE,
    foreign key(rol_id) references roles(id) ON UPDATE CASCADE
);

CREATE TABLE productos(
    id integer primary key,
    categoria_id integer,
    nombre varchar(50),
    precio numeric(13,2),
    cantidad integer,
    descripcion text,
    foreign key(categoria_id) references categorias(id) ON UPDATE CASCADE
);

CREATE TABLE imagenes(
    id integer primary key,
    producto_id integer,
    archivo text,
    foreign key(producto_id) references productos(id) ON UPDATE CASCADE
);

CREATE TABLE calificaciones(
    id integer primary key,
    usuario_id integer,
    producto_id integer,
    calificacion integer CHECK (calificacion BETWEEN 1 and 5),
    fecha_hora datetime default current_timestamp,
    foreign key(usuario_id) references usuarios(id) ON UPDATE CASCADE,
    foreign key(producto_id) references productos(id) ON UPDATE CASCADE
);