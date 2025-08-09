--Cargar data en tabla proveedores
INSERT INTO proveedores(id, nombre, direccion, telefono, correo) values
(null,'GENERAL ELECTRIC', 'AV. BARALT', '+58 212 123465789', 'INFO@GE.COM'),
(null, 'WHIRPOOL', 'AV. SAN MARTIN', '+58 414 9876544321', 'INFO@WHIRPOOL.COM'),
(null, 'LG', 'AV. ROMULO GALLEGOS', '+58 212 123987456', 'INFO@LG.COM'),
(null, 'MABE', 'AV. FRANCISCO DE MIRANDA', '+58 212 7653421', 'INFO@MABE.COM');

--Cargar data en tabla productos
INSERT INTO productos1(id, proveedor_id, nombre, precio, existencia) values
(null, 1, 'LAVADORA', 800.25, 12),
(null, 1, 'NEVERA', 800.25, 6),
(null, 1, 'COCINA', 300.75, 8),
(null, 1, 'AA', 450.00, 9),
(null, 1, 'SECADORA', 600.00, 8),

(null, 2, 'LAVADORA', 800.25, 12),
(null, 2, 'CONGELADOR', 800.25, 6),
(null, 2, 'COCINA', 300.75, 8),
(null, 2, 'VENTILADOR', 150.00, 9),
(null, 2, 'SECADORA', 750.00, 8),

(null, 3, 'FREIDORA', 800.25, 12),
(null, 3, 'PARRILLERA', 800.25, 6),
(null, 3, 'LAVAPLATOS', 350.75, 8),
(null, 3, 'MICROONDAS', 250.00, 12),
(null, 3, 'SECADORA', 700.00, 8),

(null, 4, 'LAVADORA', 580.75, 12),
(null, 4, 'AA', 500.25, 3),
(null, 4, 'SECADORA', 650.75, 4),
(null, 4, 'MICROONDAS', 350.00, 6),
(null, 4, 'NEVERA', 350.75, 4);

(null, 9, 'LAVADORA', 580.75, 12),
(null, 9, 'AA', 500.25, 3),
(null, 9, 'SECADORA', 650.75, 4),
(null, 9, 'MICROONDAS', 350.00, 6),
(null, 9, 'NEVERA', 350.75, 4);

--Prueba de integridad referencial de datos
--no se puede insertar registros cuya clave foranea no corresponda a los datos almacenados
INSERT INTO productos (id, proveedor_id, nombre, precio, existencia)
VALUES (null, 5,'LAVADORA', 670.25, 5);

--ERROR, No se puede borrar un registro de la tabla donde se encuentra la clave primaria de la cual se depende
DELETE FROM  proveedores WHERE id = 1;

--NO se puede actualizar el valor de la clave primaria de la tabla, de la cual se depende.
UPDATE proveedores SET id = 11 WHERE id = 1;

--Actualizar/Eliminar en cascada
--ON DELETE/UPDATE CASCADE

create table proveedores1(
    id integer auto_increment,
    nombre varchar(80),
    direccion text,
    telefono varchar(30),
    correo varchar(80),
    primary key(id),
    unique(correo)
);

create table productos1(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(80),
    precio numeric(13,2),
    existencia integer,
    primary key(id),
    foreign key(proveedor_id) references proveedores1(id) ON DELETE CASCADE ON UPDATE CASCADE
);

--se puede borrar un registro de la tabla donde se encuentra la clave primaria de la cual se depende
DELETE FROM  proveedores1 WHERE id = 2;

--Modificar tablas proveedores y productos 
--donde se añaden atributos ON DELETE/UPDATE CASCADE despues de creadas las tablas

create table proveedores2(
    id integer auto_increment,
    nombre varchar(80),
    direccion text,
    telefono varchar(30),
    correo varchar(80),
    primary key(id),
    unique(correo)
);

create table productos2(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(80),
    precio numeric(13,2),
    existencia integer,
    primary key(id),
    foreign key(proveedor_id) references proveedores2(id)
);

--Detalles en la definicion de ambas tablas
SHOW CREATE TABLE proveedores2;
SHOW CREATE TABLE   productos2;

--eliminacion en la asociacion entre tablas
ALTER TABLE PRODUCTOS 2 DROP CONSTRAINT productos2_ibfk_1;

--una vez borrada la asociacion entre tablas y deifinida nuevamente
--con paramentros ON UPDATE/DELETE CASCADE, se crea la clave foranea
ALTER TABLE productos2 ADD FOREIGN KEY (proveedor_id) references proveedores2(id) ON UPDATE CASCADE
ON DELETE CASCADE;

--CONSULTA COMBINADA ENTRE PROVEEDORES Y PRODUCTOS
SELECT 
proveedores.nombre, 
proveedores.telefono,
productos.nombre,
productos.precio,
productos.existencia
FROM
proveedores, productos
WHERE productos.proveedor_id = proveedores.id;

--CREACION DE VISTAS
CREATE VIEW vista_prov_prod AS
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores AS A, productos AS B
WHERE
B.proveedor_id = A.id;

--INNER JOIN
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores AS A INNER JOIN productos AS B ON A.id = B.proveedor_id;

INSERT INTO proveedores(id, nombre, direccion, telefono, correo)
VALUES (NULL, 'SONY', 'AV. VICTORIA', '+58 212 4234567', 'info@sony.com'),
       (NULL, 'PHILLIPS', 'AV. URDANETA', '+58 414 5876543', 'info@phillips.com'),
       (NULL, 'ZENITH', 'AV. NVA GRANADA', '+58 212 7543212', 'info@zenith.com');

CREATE VIEW vista_prov_prod_inner_join AS
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores AS A INNER JOIN productos AS B ON A.id = B.proveedor_id;

--LEFT JOIN 
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores AS A LEFT JOIN productos AS B ON A.id = B.proveedor_id;

--VISTA LEFT JOIN
CREATE VIEW vista_prov_prod_left_join AS 
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores AS A LEFT JOIN productos AS B ON A.id = B.proveedor_id;

--RIGHT JOIN
INSERT INTO proveedores2(id, nombre, direccion, telefono, correo)
VALUES (NULL, 'SONY', 'AV. VICTORIA', '+58 212 4234567', 'info@sony.com'),
       (NULL, 'PHILLIPS', 'AV. URDANETA', '+58 414 5876543', 'info@phillips.com'),
       (NULL, 'ZENITH', 'AV. NVA GRANADA', '+58 212 7543212', 'info@zenith.com');

INSERT INTO productos2(id, proveedor_id, nombre, precio, existencia) values
(null, 1, 'LAVADORA', 800.25, 12),
(null, 1, 'NEVERA', 800.25, 6),
(null, 1, 'COCINA', 300.75, 8),
(null, 1, 'AA', 450.00, 9),
(null, 1, 'SECADORA', 600.00, 8),

(null, 2, 'LAVADORA', 800.25, 12),
(null, 2, 'CONGELADOR', 800.25, 6),
(null, 2, 'COCINA', 300.75, 8),
(null, 2, 'VENTILADOR', 150.00, 9),
(null, 2, 'SECADORA', 750.00, 8),

(null, 3, 'FREIDORA', 800.25, 12),
(null, 3, 'PARRILLERA', 800.25, 6),
(null, 3, 'LAVAPLATOS', 350.75, 8),
(null, 3, 'MICROONDAS', 250.00, 12),
(null, 3, 'SECADORA', 700.00, 8),

(null, 4, 'LAVADORA', 580.75, 12),
(null, 4, 'AA', 500.25, 3),
(null, 4, 'SECADORA', 650.75, 4),
(null, 4, 'MICROONDAS', 350.00, 6),
(null, 4, 'NEVERA', 350.75, 4),

(null, 9, 'LAVADORA', 580.75, 12),
(null, 9, 'AA', 500.25, 3),
(null, 9, 'SECADORA', 650.75, 4),
(null, 9, 'MICROONDAS', 350.00, 6),
(null, 9, 'NEVERA', 350.75, 4);

--borrar contenido completo de tabla
TRUNCATE productos2;

--Es equivalente a 
DELETE FROM productos2

--RIGHT JOIN
CREATE VIEW vista_prov_prod_right_join AS
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores2 AS A RIGHT JOIN productos2 AS B ON A.id = B.proveedor_id;

INSERT INTO proveedores2(id, nombre, direccion, telefono, correo) values
(null,'GENERAL ELECTRIC', 'AV. BARALT', '+58 212 123465789', 'INFO@GE.COM'),
(null, 'WHIRPOOL', 'AV. SAN MARTIN', '+58 414 9876544321', 'INFO@WHIRPOOL.COM'),
(null, 'LG', 'AV. ROMULO GALLEGOS', '+58 212 123987456', 'INFO@LG.COM'),
(null, 'MABE', 'AV. FRANCISCO DE MIRANDA', '+58 212 7653421', 'INFO@MABE.COM'),
(NULL, 'SONY', 'AV. VICTORIA', '+58 212 4234567', 'info@sony.com'),
(NULL, 'PHILLIPS', 'AV. URDANETA', '+58 414 5876543', 'info@phillips.com'),
(NULL, 'ZENITH', 'AV. NVA GRANADA', '+58 212 7543212', 'info@zenith.com');

--FULL JOIN 
--REPRESENTA LA UNION DEL LEFT Y RIGHT JOIN 

SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores AS A LEFT JOIN productos AS B ON A.id = B.proveedor_id
UNION
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores2 AS A RIGHT JOIN productos2 AS B ON A.id = B.proveedor_id;

CREATE VIEW vista_prov_prod_full_join AS
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores AS A LEFT JOIN productos AS B ON A.id = B.proveedor_id
UNION
SELECT
A.nombre AS proveedor,
A.telefono,
B.nombre,
B.precio,
B.existencia
FROM
proveedores2 AS A RIGHT JOIN productos2 AS B ON A.id = B.proveedor_id;

--Asociacion de muchos a muchos "n:n" (4ta forma normal)
CREATE TABLE estudiantes(
    id integer auto_increment,
    nombre varchar(80),
    apellido varchar(80),
    primary key(id)
);

CREATE TABLE materias(
    id integer auto_increment,
    nombre varchar(80),
    primary key(id)
);

CREATE TABLE estudiantes_materias(
    estudiante_id integer,
    materia_id integer,
    primary key(estudiante_id, materia_id),
    foreign key(estudiante_id) references estudiantes(id),
    foreign key(materia_id) references materias(id)
);