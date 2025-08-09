insert into proveedores(id,nombre, direccion, telefono, correo) values
(null, 'GENERALELECTRIC', 'AV. BARALT', '+582121234567', 'info@ge.com'),
(null, 'WHIRPOOL', 'AV. SAN MATRIN', '+584149876543', 'info@whirpool.com'),
(null, 'LG', 'AV. ROMULO GALLEGOS', '+582126543212', 'info@lg.com'),
(null, 'MABE', 'AV. FRANCISCO DE MIRANDA', '+582127654321', 'info@mabe.com');

insert into productos(id,proveedor_id, nombre, precio, existencia) values
(null,1,'LAVADORA', 800.25,12),
(null,1,'NEVERA', 700.50,6),
(null,1,'COCINA', 300.75,8),
(null,1,'AA', 450.00,9),
(null,1,'SECADORA', 600.00,8),

(null,2,'LAVADORA', 800.25,12),
(null,2,'CONGELADOR', 300.50,3),
(null,2,'COCINA', 290.75,4),
(null,2,'VENTILADOR', 150.00,9),
(null,2,'SECADORA', 750.00,8),

(null,3,'FREIDORA', 280.25,8),
(null,3,'PARRILLERA', 250.50,6),
(null,3,'LAVAPLATOS', 350.75,8),
(null,3,'MICRONDAS', 250.00,12),
(null,3,'NEVERA', 450.00,9),

(null,4,'LAVADORA',580.75,12),
(null,4,'AA',500.50,3),
(null,4,'SECADORA',650.75,4),
(null,4,'MICRONDAS',350.00,6),
(null,4,'NEVERA',350.75,4);

-- Prueba de integridad referencia de datos 
-- error, no se puede insertar un registro, cuya clave foranea
-- no se corresponde a los datos almacenados 
insert into productos(id,proveedor_id, nombre, precio, existencia) 
values
(null,5,'LAVADORA', 670.25,2);

-- No se puede borrar un registro de la tabla donde se encuentra la clave 
-- La clave primaria de la cual se depende
delete from proveedores where id = 1;

-- No se puede actualizar el valor de clave primaria un la tabla
-- de la cual se depende

update proveedores set id = 11 where id = 1;

-- On delete ccascade on update cascade 
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
foreign key(proveedor_id) references proveedores1(id) ON DELETE cascade ON UPDATE cascade

);




insert into proveedores1(id,nombre, direccion, telefono, correo) values
(null, 'GENERALELECTRIC', 'AV. BARALT', '+582121234567', 'info@ge.com'),
(null, 'WHIRPOOL', 'AV. SAN MATRIN', '+584149876543', 'info@whirpool.com'),
(null, 'LG', 'AV. ROMULO GALLEGOS', '+582126543212', 'info@lg.com'),
(null, 'MABE', 'AV. FRANCISCO DE MIRANDA', '+582127654321', 'info@mabe.com');

insert into productos1(id,proveedor_id, nombre, precio, existencia) values
(null,1,'LAVADORA', 800.25,12),
(null,1,'NEVERA', 700.50,6),
(null,1,'COCINA', 300.75,8),
(null,1,'AA', 450.00,9),
(null,1,'SECADORA', 600.00,8),

(null,2,'LAVADORA', 800.25,12),
(null,2,'CONGELADOR', 300.50,3),
(null,2,'COCINA', 290.75,4),
(null,2,'VENTILADOR', 150.00,9),
(null,2,'SECADORA', 750.00,8),

(null,3,'FREIDORA', 280.25,8),
(null,3,'PARRILLERA', 250.50,6),
(null,3,'LAVAPLATOS', 350.75,8),
(null,3,'MICRONDAS', 250.00,12),
(null,3,'NEVERA', 450.00,9),

(null,4,'LAVADORA',580.75,12),
(null,4,'AA',500.50,3),
(null,4,'SECADORA',650.75,4),
(null,4,'MICRONDAS',350.00,6),
(null,4,'NEVERA',350.75,4);

-- se puede actualizar el valor de clave primaria un la tabla
-- de la cual se depende

update proveedores set id = 11 where id = 1;

-- puede borrar reistro de las tablas 

delete from proveedores1 where id = 2;

-- Modificar las tablas proveedores y productos, donde se añaden atributos 
-- ON DELETE CASCADE ON UPDATE CASCADE, despues  de creadas las tablas

create table proveedores2(
id integer auto_increment,
nombre varchar(80),
direccion text,
telefono varchar(30),
correo varchar(80),
primary key(id),
unique(correo)

);

create table producto2(
id integer auto_increment,
proveedor_id integer,
nombre varchar(80),
precio numeric(13,2),
existencia integer,
primary key(id),
foreign key(proveedor_id) references proveedores2(id)

);

-- Detalles de la definicion de ambas tablas
show create table proveedores2;

show create table producto2;

-- Eliminacion en la asociacion entre las tablas 
alter table producto2 drop constraint producto2_ibfk_1;


-- Una vez borrada la asociacion entre tablas y definida nuevamente 
-- con parametros con on update cascade y on delete cascade se crea
-- la clave foranea
alter table producto2 add foreign key(proveedor_id)
references proveedores2(id) on delete cascade on update cascade;

-- Consulta combinada entre proveedores y productos 
select proveedores.nombre,
        proveedores.telefono,
        productos.nombre,
        productos.precio,
        productos.existencia
        from proveedores, productos
        where productos.proveedor_id = proveedor_id; 


-- Consulta combinada entre proveedores y productos

select A.nombre,
        A.direccion,
        A.telefono,
        A.correo,
        B.nombre,
        B.precio,
        B.existencia
        from proveedores as A, productos as B
        where productos.proveedor_id = A.id; 

-- CONSULTA COMBINADA ENTRE PROVEEDORES Y PRODUCTOS
-- EMPLEANDO ALIAS
SELECT A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A, productos as B
       where B.proveedor_id = A.id;

-- Creacion de vistas 
create view vista_prov_prod as 
SELECT A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A, productos as B
       where B.proveedor_id = A.id;



select * from 


--Datos del conjunto A (tabla proveedores) y datos del conjunto B, que coinciden en la interceccion 
inner join 
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A
       inner join productos as B
        on B.proveedor_id = A.id;       

insert into proveedores2(id, nombre, direccion, telefono, correo) values
(null,'SONY','AV. VICTORIA','+58 212 12341327', 'info@sony.com'),
(null,'PHILIPHS','AV. URDANETA','+58 414 9867543', 'info@philiphs.com'),
(null,'ZENITH','AV. NVA. GRANADA','+58 212 6783212', 'info@zenith.com');

create view vista_prov_prod_left_join as 
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A
       left join productos as B
        on B.proveedor_id = A.id;       


create view vista_prov_prod_inner_join as 
SELECT A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A 
       inner join productos as B
       on B.proveedor_id = A.id;





insert into proveedores2(id, nombre, direccion, telefono, correo) values
(null,'GENERAL ELECTRIC','AV. BARALT','+58 212 1234567', 'info@ge.com'),
(null,'WHIRPOOL','AV. SAN MARTIN','+58 414 9876543', 'info@whirpool.com'),
(null,'LG','AV. ROMULO GALLEGOS','+58 212 6543212', 'info@lg.com'),
(null,'MABE','AV. FRANCISCO DE MIRANDA','+58 212 7654321', 'info@mabe.com'),
(null,'SONY','AV. VICTORIA','+58 212 12341327', 'info@sony.com'),
(null,'PHILIPHS','AV. URDANETA','+58 414 9867543', 'info@philiphs.com'),
(null,'ZENITH','AV. NVA. GRANADA','+58 212 6783212', 'info@zenith.com');

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


delete from productos2;



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
      


       

CREATE view vista_prov_prod_RIGHT_join as
select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia
       from proveedores2 AS A
       RIGHT JOIN productos2 as B
       on B.proveedor_id = A.id; 
      

      -- Representa la union de full join y de rigth join
      
 
 Select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A
       left join productos as B
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
      

 CREATE view vista_prov_prod_full_join as     
Select A.nombre as proveedor,
       A.correo,
       B.nombre as producto,
       B.precio,
       B.existencia 
       from proveedores as A
       left join productos as B
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
      

-- Asociacion de muchos a muchos (4ta. forma normal)
create table estudiantes(

id integer auto_increment, 
nombre varchar(80),
apellido varchar(80),
primary key(id)

);

create tables materias(
id integer  auto_increment,
nombre varchar(80),
primary key(id)

);

create table estudiantes_materias(
estudiante_id integer,
materia_id integer,
primary key(estudiante_id, materia_id),
foreign key(estudiante_id) referencesestudiantes(id),
foreign key(materia_id) references materias(id,)

);






















