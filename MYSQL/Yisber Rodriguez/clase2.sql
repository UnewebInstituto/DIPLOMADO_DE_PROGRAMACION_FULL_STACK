insert into proveedores(id, nombre, direccion, telefono, correo) values
(null,'GENERAL ELECTRIC','AV. BARALT','+58 212 1234567', 'info@ge.com'),
(null,'WHIRPOOL','AV. SAN MARTIN','+58 414 9876543', 'info@whirpool.com'),
(null, 'LG','AV. ROMULO GALLEGOS','+58 212 6543212', 'info@lg.com'),
(null, 'MABE','AV. FRANCISCO DE MIRANDA', '+58 212 7654321', 'info@mabe.com');

insert into proveedores(id, nombre, direccion, telefono, correo) values
(null, 'MABE','AV. FRANCISCO DE MIRANDA', '+58 212 7654321', 'info@mabe.com');

(null, 'LG','AV. ROMULO GALLEGOS','+58 212 6543212', 'info@lg.com');

//*insertando valores a la tabla productos*/ 

insert into productos (id, proveedor_id, nombre, precio, existencia)
values 
(null,1,'LAVADORA',800.25,12),
(null,1,'NEVERA',700.50,6),
(null,1,'COCINA',300.75,8),
(null,1,'AA',450.00,9),
(null,1,'SECADORA',600.00,8),
(null,2,'LAVADORA',800.25,12),
(null,2,'CONGELADOR',300.50,3),
(null,2,'COCINA',290.75,4),
(null,2,'VENTILADOR',150.00,6),
(null,2,'SECADORA',750.00,8),
(null,3,'FREIDORA',280.25,8),
(null,3,'PARRILLERA',200.50,6),
(null,3,'LAVAPLATOS',350.75,8),
(null,3,'MICRONDAS',250.00,12),
(null,3,'NEVERA',450.00,9),
(null,4,'LAVADORA',580.75,12),
(null,4,'AA',500.50,3),
(null,4,'SECADORA',650.75,4),
(null,4,'MICRONDAS',350.00,6),
(null,4,'NEVERA',350.75,4);


/* PRUEBA DE INTEGRIDAD REFERENCIAL DE DATOS
ERROR no se puede ingresar un registro cuya vlave fortanea no corresponde a los datos almacenados*/
insert into productos(id, proveedor_id, nombre, precio, existencia)
values 
(null,5,'LAVADORA',670.25,3);

/*NO SE PUEDE BORRAR UN RESGISTRO DE LA TABLA DONDE SE ENCUENTRA LA CLAVE PRIMARIA DE LA CUAL SE DEPENDE*/
delete from proveedores where id = 1;


/*No se puede actualizar el valor de la clave primaria en la tabla de la cual se depende*/
update proveedores set id = 1;


/*ON DELETE CASCADE ON UPDATE CASCADE*/

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
    foreign key(proveedor_id) references proveedores1(id) on delete cascade on update cascade 
);

insert into proveedores1(id, nombre, direccion, telefono, correo) values
(null,'GENERAL ELECTRIC','AV. BARALT','+58 212 1234567', 'info@ge.com'),
(null,'WHIRPOOL','AV. SAN MARTIN','+58 414 9876543', 'info@whirpool.com'),
(null,'LG','AV. ROMULO GALLEGOS','+58 212 6543212', 'info@lg.com'),
(null,'MABE','AV. FRANCISCO DE MIRANDA','+58 212 7654321', 'info@mabe.com');

insert into productos1(id, proveedor_id, nombre, precio, existencia)
values 
(null,1,'LAVADORA',800.25,12),
(null,1,'NEVERA',700.50,6),
(null,1,'COCINA',300.75,8),
(null,1,'AA',450.00,9),
(null,1,'SECADORA',600.00,8),
(null,2,'LAVADORA',800.25,12),
(null,2,'CONGELADOR',300.50,3),
(null,2,'COCINA',290.75,4),
(null,2,'VENTILADOR',150.00,6),
(null,2,'SECADORA',750.00,8),
(null,3,'FREIDORA',280.25,8),
(null,3,'PARRILLERA',200.50,6),
(null,3,'LAVAPLATOS',350.75,8),
(null,3,'MICRONDAS',250.00,12),
(null,3,'NEVERA',450.00,9),
(null,4,'LAVADORA',580.75,12),
(null,4,'AA',500.50,3),
(null,4,'SECADORA',650.75,4),
(null,4,'MICRONDAS',350.00,6),
(null,4,'NEVERA',350.75,4);


-- SE PUEDE ACTUALIZAR EL VALOR DE CLAVE PRIMARIA EN LA TABLA
-- DE LA CUAL SE DEPENDE.
update proveedores1 set id = 11 where id = 1;

-- PUEDE BORRAR UN REGISTRO DE LA TABLA, DONDE SE ENCUENTRA
-- LA CLAVE PRIMARIA, DE LA CUAL SE DEPENDE
delete from proveedores1 where id = 2;

/*MODIFICAR LAS TABLAS PROVEEDORES Y PROUDTOS DONDE SE AÑADEN ATRIBUTOS ON DELETE CASCADE DESPUES DE CREADA LAS TABLAS*/


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

/*DETALLES EN LA DEFINICION DE AMBAS TABLAS*/
show create table proveedores2;
show create table productos2;

/*ELIMINACION EN LA ASOCIACION ENTRE TABLAS*/
alter table productos2 drop constraint productos2_ibfk_1;

/*AÑADIR UNA VEZ BORRADA LA  ASOCIACION ENTRE TABLAS Y DEFINIDA NUEVAMENTE CON PARAMETROS ON UPDATE CASCADE Y ON DELETE CASCADE SE CREA LA CLAVE FORANEA*/

ALTER TABLE productos2 ADD foreign key (proveedor_id) references proveedores2(id) on delete cascade on update cascade;

/*Consulta convinada entre proveedores y productos*/

select proveedores.nombre,
proveedores.telefono,
productos.nombre,
productos.precio,
productos.existencia
from proveedores, productos
where productos.proveedor_id= proveedores.id;


/*CONSULTA COMBINADA ENTRE DOS TABLAS EMPLEANDADO ALIAS*/

select A.nombre,
A.direccion,
A.telefono,
a.correo,
B.nombre AS producto,
B.precio,
B.existencia
from proveedores as A, productos as B
where B.proveedor_id= A.id;

/*CREACION DE VISTAS*/

    create view vista_prov_prod as
    select A.nombre,
    A.direccion,
    A.telefono,
    a.correo,
    B.nombre AS producto,
    B.precio,
    B.existencia
    from proveedores as A, productos as B
    where B.proveedor_id= A.id;

--INNER JOIN datos que coinciden en la interseccion

SELECT A.nombre as proveedor,
A.direccion,
A.telefono,
A.correo,
B.nombre as producto,
B.precio,
B.existencia 
from proveedores as A 
inner join productos as B
on B.proveedor_id = A.id;

--insercion de datos

insert into proveedores(id, nombre, direccion, telefono, correo) values
(null,' SONIC','AV. VICTORIA','+58 212 1234567', 'info@sonic.com'),
(null,'PHILPHS','AV. URDANETA','+58 414 9876543', 'info@philiphs.com'),
(null,'ZENITH','AV. NVA GRANADA','+58 212 6543212', 'info@zenith.com'),

--cREACION DE VISTA
create view vista_prov_prod_inner_join as
select A.nombre,
A.direccion,
A.telefono,
a.correo,
B.nombre AS producto,
B.precio,
B.existencia
from proveedores as A, productos as B
where B.proveedor_id= A.id;


--DATOS DEL CONJUNTO A (PROVEEDORES)Y DATOS DEL CONJUNTO B que coinciden en la interseccion LEFT JOIN

SELECT A.nombre as proveedor,
A.direccion,
A.telefono,
A.correo,
B.nombre as producto,
B.precio,
B.existencia 
from proveedores as A 
left join productos as B
on B.proveedor_id = A.id;


insert into proveedores2(id, nombre, direccion, telefono, correo) values
(null,'GENERAL ELECTRIC','AV. BARALT','+58 212 1234567', 'info@ge.com'),
(null,'WHIRPOOL','AV. SAN MARTIN','+58 414 9876543', 'info@whirpool.com'),
(null,'LG','AV. ROMULO GALLEGOS','+58 212 6543212', 'info@lg.com'),
(null,'MABE','AV. FRANCISCO DE MIRANDA','+58 212 7654321', 'info@mabe.com'),
(null,'SONY','AV. VICTORIA','+58 212 4234567', 'info@sony.com'),
(null,'PHILIPS','AV. URDANETA','+58 414 5876543', 'info@philips.com'),
(null,'ZENITH','AV. NVA. GRANADA','+58 212 7543212', 'info@zenith.com');

insert into productos2(id, proveedor_id, nombre, precio, existencia)
values 
(null,1,'LAVADORA',800.25,12),
(null,1,'NEVERA',700.50,6),
(null,1,'COCINA',300.75,8),
(null,1,'AA',450.00,9),
(null,1,'SECADORA',600.00,8),
(null,2,'LAVADORA',800.25,12),
(null,2,'CONGELADOR',300.50,3),
(null,2,'COCINA',290.75,4),
(null,2,'VENTILADOR',150.00,6),
(null,2,'SECADORA',750.00,8),
(null,3,'FREIDORA',280.25,8),
(null,3,'PARRILLERA',200.50,6),
(null,3,'LAVAPLATOS',350.75,8),
(null,3,'MICRONDAS',250.00,12),
(null,3,'NEVERA',450.00,9),
(null,4,'LAVADORA',580.75,12),
(null,4,'AA',500.50,3),
(null,4,'SECADORA',650.75,4),
(null,4,'MICRONDAS',350.00,6),
(null,4,'NEVERA',350.75,4),
(null,9,'LAVADORA',580.75,12),
(null,9,'AA',500.50,3),
(null,9,'SECADORA',650.75,4),
(null,9,'MICRONDAS',350.00,6),
(null,9,'NEVERA',350.75,4);


create view vista_prov_prod_letf_join as
select A.nombre,
A.direccion,
A.telefono,
a.correo,
B.nombre AS producto,
B.precio,
B.existencia
from proveedores as A, productos as B
where B.proveedor_id= A.id;

/*borrar contenido completo de tabla*/

truncate productos2;
--equivalente
delete from pronductos2:



/*right join*/
--DATOS DEL CONJUNTO A (PROVEEDORES)Y DATOS DEL CONJUNTO B que coinciden en la interseccion RIGHT JOIN

SELECT A.nombre as proveedor,
A.correo,
B.nombre as producto,
B.precio,
B.existencia 
from proveedores2 as A 
right join productos2 as B
on B.proveedor_id = A.id;


create view vista_prov_prod_right_join as 
SELECT A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores2 as A 
       right join productos2 as B
       on B.proveedor_id = A.id;


--REPRESENTA LA UNION DEL LEFT Y DEL RIGHT JOIN
SELECT A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A 
       left join productos as B
       on B.proveedor_id = A.id
UNION
SELECT A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores2 as A 
       right join productos2 as B
       on B.proveedor_id = A.id;


--VISTA 

create view vista_prov_prod_full_join as 
SELECT A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A 
       left join productos as B
       on B.proveedor_id = A.id
UNION
SELECT A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores2 as A 
       right join productos2 as B
       on B.proveedor_id = A.id;

--ASOCIACION DE MUCHOS A MUCHOS 4TA FORMA NORMAL

create table estudiantes(
    id integer auto_increment,
    nombre varchar(80),
    apellido varchar (80),
    primary key (id)
);

create table materias(
    id integer auto_increment,
    nombre varchar(80),
    primary key (id)
);

create table estudiantes_materias (
    estudiante_id integer,
    materia_id integer,
    primary key (estudiante_id, materia_id),
    foreign key (estudiante_id) references estudiantes (id),
    foreign key (materia_id) references materias (id),
);
