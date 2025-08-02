-- acceso a mysql
mysql -u root -p


--creación de la base de datos--
create database bd_yisber_20250802;

--conexion con la base de datos--

use bd_yisber_20250802;

--creación de tablas--
create table contactos(nombre varchar(60),
 apellido varchar(60),
 telefono varchar(20),
 correo varchar(60));

 --ver la base de datos--
 show tables;

 --ver base de datos en el servidor--
 show databases like '%_20250802%';

--ver estructura de la tabla--

describe contactos;

--otra forma de ver la tabla--
show create table contactos;

--BORRAR CAMPO DE UNA TABLA--
alter table contactos drop telefono;

--añadir un campo al comiezo de la tabla--
alter table contactos add column telefono_hab varchar (20) first;

--añadir al final--
alter table contactos add column telefono_cel varchar(20);

--añadir un campo despues de un campo pre-existente--
alter table contactos add column telefono_of varchar(20) after apellido;

--cambiar el tipo de datos para un campo--
alter table contactos change column telefono_hab telefono_hab integer;

--cambiar nombre del campo y conservar el mismo tipo de datos--
alter table contactos change column telefono_hab telf_hab integer;


--CRUD (CREATE , READ, UPDATE, DELATE)
-- EQUIVALE A LAS OPERACIONES DE INSERT SELECT UPDATE DELATE--
insert into contactos(nombre,apellido,correo,telefono_cel,telefono_hab,telefono_ofi) 
values ('ANA','VASQUEZ','AV@GMAIL.COM','+58 414 2839451','+58 212 3313331','+58 2123315252');


-- Ingreso de varios registros
insert into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
('YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),
('NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');

--consulta de todos los campos contenidos en la tabla--

SELECT * from contactos;

--consulta de algunos campos de la lista--
select nombre,apellido,correo from contactos;


--consulta condicionada de la tabla--
select * from contactos where nombre = 'ana';

--consulta de la tabla contactos donde el tel de habitacion contenga  el valor 212--
select * from contactos where telefono_hab like '%212%';

-- actualización de registros en la tabla 
update contactos set nombre = 'ANA MARIA' where nombre = 'ANA';

-- ¿que sucede si se omite el condicional?
-- todos los campos se ven afectados por la actualización
update contactos set nombre = 'ANA MARIA';

-- Actualización individual de los nombres
update contactos set nombre = 'NELLY' where correo = 'NC@GMAIL.COM';
update contactos set nombre = 'YOLANDA' where correo = 'YT@GMAIL.COM';

--añadir una columna al principio de la tabla al inicio de tipo entero auto_incremento

alter table contactos add column id integer auto_increment primary key first;

--Borrar registros duplicados

delete from contactos where id = 4;


-- Atención: No se puede ingresar un nuevo registro, cuyo campo
-- clave (clave primaria) coincida con un valor pre existente.
--                    +-- 
--                    |
--                    v
insert into contactos(id,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
(1,'SUSANA','PEREZ','SP@GMAIL.COM','+58 212 7876543','+58 414 7234567','+58 212 8654321');


--

insert into contactos(id,nombre,apellido,correo,telefono_cel,telefono_hab,telefono_ofi) values
('SUSANA','PEREZ','SP@GMAIL.COM','+58 212 7876543','+58 414 7234567','+58 212 8654321');

-- creación de tabla con clave primaria y clave única
-- un campo al ser declarado 'primary key', ya es único
-- ahora, si se requiere, que otro campo sea único y no
-- es clave primaria, se emplea la instrucciión 'unique'

create table personas(
    id integer auto_increment,
    cedula varchar(10),
    nombre varchar(60),
    apellido varchar(60),
    correo varchar(60),
    telefono_hab varchar(20),
    telefono_cel varchar(20),
    telefono_ofi varchar(20),
    primary key(id),
    unique(cedula),
    unique(correo)
);

-- Ingreso de datos
insert into personas(cedula,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
('V1234','ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321'),
('V5678','YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),
('V9012','NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');

-- Otra forma
insert into personas(id,cedula,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
(null,'V1234','ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321'),
(null,'V5678','YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),
(null,'V9012','NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');


--PRUEBA DE INSERCION DE REGISTRO CON CAMPO UNICO PRE EXISTENTE
--correo ya registrado

insert into personas(cedula,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
('V1234','SUSANA','PEREZ','SP@GMAIL.COM','+58 212 7876543','+58 414 7234567','+58 212 8654321');


-- Asociación entre tablas

create table proveedores(
    id integer auto_increment,
    nombre varchar(80),
    direccion text,
    telefono varchar(30),
    correo varchar(80),
    primary key(id),
    unique(correo)
);

create table productos(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(80),
    precio numeric(13,2),
    existencia integer,
    primary key(id),
    foreign key(proveedor_id) references proveedores(id)
);

