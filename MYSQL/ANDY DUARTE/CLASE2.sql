insert into proveedores(id,nombre,direccion,telefono,correo)values
(null,'General Electric','AV.BRARALT','+58 2121234567','inf@ge.com'),
(null,'WHIRPOOL','AV. SAN MARTIN','+58 414 9876543','inf@whirpool.com'),
(null,'LG','AV. ROMULO GALLEGOS','+58 212 6543212', 'info@lg.com'),
(null,'MABE','AV. FRANCISCO DE MIRANDA','+58 212 7654321', 'info@mabe.com');

insert into productos(id,proveedor_id,nombre,precio,existencia)values
(null,1,'LAVADORA',800.25,12),
(null,1,'NEVERA',700.50,6),
(null,1,'COCINA',300.75,8),
(null,1,'AA',450.00,9),
(NULL,1,'SECADORA',600.00,8),
(null,2,'LAVADORA',800.25,12),
(null,2,'CONGELADOR',300.50,3),
(null,2,'COCINA',300.75,4),
(null,2,'VENTILADOR',150.00,6),
(NULL,2,'SECADORA',750.00,8),
(null,3,'FREIDORA',280.25,8),
(null,3,'PARRILLERA',200.50,6),
(null,3,'LAVAPLATOS',350.75,8),
(null,3,'MICRONDAS',250.00,12),
(NULL,3,'NEVERA',450.00,9),
(null,4,'LAVADORA',580.75,12),
(null,4,'AA',500.50,3),
(null,4,'SECADORA',650.75,4),
(null,4,'MICRONDAS',350.00,6),
(NULL,4,'NEVERA',350.75,4);

-- caso de error por integridad REFERENCIAL de datos.
--ERROR NO SE PUEDE INSERTAR UN REGISTRO , CUYA CLAVE FORANEA NO SE CORRESPONDE A LOS DATOS ALMACENADOS
insert into productos(id,proveedor_id,nombre,precio,existencia)values
(null,5,'AA',600.25,3);


--ERROR, NO SE PUEDE BORRAR UN REGISTRO DE LA TABLA DONDE SE ENCUNTRA LA CLAVE PRIMARIA, DE LA CUAL SE DEPENDE 
DELETE FROM proveedores where id = 1;

--ERROR NO SE PUEDE ACTUALIZAR EL VALOR DE LA CLAVE PRIMARIA EN LA TABLA DE LA CUAL SE DEPENDE.

update proveedores set id = 11 where id=1;

--ON DELETE CASCADE ON UPDATE CASCADE

CREATE table proveedores1(
    id integer auto_increment,
    nombre varchar(80),
    direccion text,
    telefono varchar(30),
    correo varchar(80),
    primary key(id),
    unique(correo)
);

CREATE table productos1(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(80),
    precio numeric(13,2),
    existencia integer,
    primary key(id),
    foreign key(proveedor_id)references proveedores1(id) ON DELETE CASCADE ON UPDATE CASCADE
);




insert into proveedores1(id,nombre,direccion,telefono,correo)values
(null,'General Electric','AV.BRARALT','+58 2121234567','inf@ge.com'),
(null,'WHIRPOOL','AV. SAN MARTIN','+58 414 9876543','inf@whirpool.com'),
(null,'LG','AV. ROMULO GALLEGOS','+58 212 6543212', 'info@lg.com'),
(null,'MABE','AV. FRANCISCO DE MIRANDA','+58 212 7654321', 'info@mabe.com');

insert into productos1(id,proveedor_id,nombre,precio,existencia)values
(null,1,'LAVADORA',800.25,12),
(null,1,'NEVERA',700.50,6),
(null,1,'COCINA',300.75,8),
(null,1,'AA',450.00,9),
(NULL,1,'SECADORA',600.00,8),
(null,2,'LAVADORA',800.25,12),
(null,2,'CONGELADOR',300.50,3),
(null,2,'COCINA',300.75,4),
(null,2,'VENTILADOR',150.00,6),
(NULL,2,'SECADORA',750.00,8),
(null,3,'FREIDORA',280.25,8),
(null,3,'PARRILLERA',200.50,6),
(null,3,'LAVAPLATOS',350.75,8),
(null,3,'MICRONDAS',250.00,12),
(NULL,3,'NEVERA',450.00,9),
(null,4,'LAVADORA',580.75,12),
(null,4,'AA',500.50,3),
(null,4,'SECADORA',650.75,4),
(null,4,'MICRONDAS',350.00,6),
(NULL,4,'NEVERA',350.75,4);

--sE PUEDE ACTUALIZAR EL VALOR DE LA CLAVE PRIMARIA EN LA TABLA DE LA CUAL SE DEPENDE.

update proveedores1 set id = 11 where id=1;


-- PUEDE BORRAR UN REGISTRO DE LA TABLA DONDE SE ENCUNTRA LA CLAVE PRIMARIA, DE LA CUAL SE DEPENDE 
DELETE FROM proveedores1 where id = 2;


-- modificar las tablas proveedores y productos , donde se añade atributos 
--on delete cascade on update cascade , despues de creadas las tablas.


CREATE table proveedores2(
    id integer auto_increment,
    nombre varchar(80),
    direccion text,
    telefono varchar(30),
    correo varchar(80),
    primary key(id),
    unique(correo)
);

CREATE table productos2(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(80),
    precio numeric(13,2),
    existencia integer,
    primary key(id),
    foreign key(proveedor_id)references proveedores2(id)
);


--Detalles en la definicion de ambas tablas
show create table proveedores2;
show create table productos2;


-- Eliminacion en la Asociacion entre tablas
alter table productos2 drop constraint productos2_ibfk_1;

--añadir una vez borrada la asociacion entre tablas y definida 
--nuevamente con parametros con on update cascade y on delete cascade 
--se crea la clave foranea

Alter table productos2 add foreign key(proveedor_id)
references proveedores2(id)ON DELETE CASCADE ON UPDATE CASCADE;

-- consulta combinada entre proveedores y productos 

select proveedores.nombre,
       proveedores.telefono,
       productos.nombre,
       productos.precio,
       productos.existencia
       from proveedores, productos
       where productos.proveedor_id = proveedores.id;


---- consulta combinada entre proveedores y productos  empleando alias
select A.nombre as proveedor,
       A.telefono,
       A.direccion,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores AS A, productos AS B
       where B.proveedor_id = A.id;

--CREACION DE VISTAS 
CREATE view vista_prov_prod as
select A.nombre as proveedor,
       A.telefono,
       A.direccion,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores AS A, productos AS B
       where B.proveedor_id = A.id;


--datos que coinciden en la interseccion
--INNER JOIN 
Select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores AS A
       INNER JOIN productoS as B
       on B.proveedor_id = A.id; 


insert into proveedores(id,nombre,direccion,telefono,correo)values
(null,'SONY','AV.VICTORIA','+58 212 4234567','inf@sony.com'),
(null,'PHILIPS','AV. URDANETA','+58 414 5876543','inf@philips.com'),
(null,'ZENIYH','AV.NVA. GRANADA','+58 212 7543212', 'info@zenetih.com');

CREATE view vista_prov_prod_inner_join as
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores AS A
       INNER JOIN productos as B
       on B.proveedor_id = A.id; 

--datos del conjunto A (tabla proveedores) y datos del conjunto B 
--que coinciden en la interseccion
--LEFT JOIN 

select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores AS A
       LEFT JOIN productos as B
       on B.proveedor_id = A.id; 

CREATE view vista_prov_prod_left_join as
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores AS A
       left JOIN productos as B
       on B.proveedor_id = A.id; 



insert into proveedores2(id,nombre,direccion,telefono,correo)values
(null,'General Electric','AV.BRARALT','+58 2121234567','inf@ge.com'),
(null,'WHIRPOOL','AV. SAN MARTIN','+58 414 9876543','inf@whirpool.com'),
(null,'LG','AV. ROMULO GALLEGOS','+58 212 6543212', 'info@lg.com'),
(null,'MABE','AV. FRANCISCO DE MIRANDA','+58 212 7654321', 'info@mabe.com'),
(null,'SONY','AV.VICTORIA','+58 212 4234567','inf@sony.com'),
(null,'PHILIPS','AV. URDANETA','+58 414 5876543','inf@philips.com'),
(null,'ZENIYH','AV.NVA. GRANADA','+58 212 7543212', 'info@zenetih.com');

insert into productos2(id,proveedor_id,nombre,precio,existencia)values
(null,1,'LAVADORA',800.25,12),
(null,1,'NEVERA',700.50,6),
(null,1,'COCINA',300.75,8),
(null,1,'AA',450.00,9),
(NULL,1,'SECADORA',600.00,8),
(null,2,'LAVADORA',800.25,12),
(null,2,'CONGELADOR',300.50,3),
(null,2,'COCINA',300.75,4),
(null,2,'VENTILADOR',150.00,6),
(NULL,2,'SECADORA',750.00,8),
(null,3,'FREIDORA',280.25,8),
(null,3,'PARRILLERA',200.50,6),
(null,3,'LAVAPLATOS',350.75,8),
(null,3,'MICRONDAS',250.00,12),
(NULL,3,'NEVERA',450.00,9),
(null,4,'LAVADORA',580.75,12),
(null,4,'AA',500.50,3),
(null,4,'SECADORA',650.75,4),
(null,4,'MICRONDAS',350.00,6),
(NULL,4,'NEVERA',350.75,4),
(null,9,'LAVADORA',580.75,12),
(null,9,'AA',500.50,3),
(null,9,'SECADORA',650.75,4),
(null,9,'MICRONDAS',350.00,6),
(NULL,9,'NEVERA',350.75,4);

--borrar contenido completo de tabla
truncate productos2;

--equivalente
delete from productos2;

--datos del conjunto B (tabla proveedores) y datos del conjunto A 
--que coinciden en la interseccion
--RIGHT JOIN 


select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores2 AS A
       RIGHT JOIN productos2 as B
       on B.proveedor_id = A.id; 
       

CREATE view vista_prov_prod_RIGHT_join as
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores2 AS A
       RIGHT JOIN productos2 as B
       on B.proveedor_id = A.id; 
      

--FULL JOIN
--REPRESENTA LA UNION DEL LEFT JOIN Y RIGHT JOIN

select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores AS A
       LEFT JOIN productos as B
       on B.proveedor_id = A.id
UNION
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores2 AS A
       RIGHT JOIN productos2 as B
       on B.proveedor_id = A.id; 


CREATE view vista_prov_prod_FULL_join as
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores AS A
       LEFT JOIN productos as B
       on B.proveedor_id = A.id
UNION
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores2 AS A
       RIGHT JOIN productos2 as B
       on B.proveedor_id = A.id; 


---ASOCIACION DE MUCHOS  a muchos (4TA. FORMA NORMAL)
create table estudiantes(
    id integer auto_increment,
    nombre varchar(80),
    apellido varchar(80),
    primary key(id)
);

create table materias(
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
