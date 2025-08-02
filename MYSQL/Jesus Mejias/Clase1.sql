--Conectar a mysql
mysql -u root -p

-- Creacion de base de datos
create database bd_jesus_20250802

--conexion a la base de datos
use db_jesus_20280802

--creacion de tablas
create table contactos(
    nombre varchar (60),
    apellido varchar (60),
    telefono varchar (60),
    correo varchar (60));

--Visualizar tablas en una base de datos
show tables

--Ver bases de datos en servidor
show databases like '%_20250802%';

--ver estructura de tabla
describe contactos;

--otra forma de ver la estructura de una tabla
show create table contactos;

--borrar un campo de una tabla
alter table contactos drop column telefono;

--añadir un campo al comienzo de una tabla
alter table contactos add column telefono_hab varchar(20) first;

--añadir un campo al final de la tabla
alter table contactos add column telefono_cel varchar(20);

--añadir un campo despues de un campo prexistente
alter table contactos add column telefono_ofi varchar(20) after apellido;

--cambiar el tipo de datos para un campo
alter table contactos change column telefono_hab telefono_hab integer;

--cambiar nombre de campo y conservar el tipo de dato
alter table contactos change column telefono_hab telf_hab integer;

--CRUD (Create, Read, Update & Delete)
--Sus operaciones equivalents son Insert, Select, Update & Delete

--Ingreso de datos
    Insert into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
    ('ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321'),
    ('YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),
    ('NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');

--Consulta de todos los campos de una tabla
select * from contactos

--consulta de algunos campos de una tabla
select nombre, apellido, correo from contactos

--consulta condicionada de la tabla
select * from contactos where nombre = 'ana'

--consulta de contactos donde el telefono_hab contenga como valores '212'
select * from contactos where telefono_hab like '%212%' and telefono_cel like '%414%'

--actualización de registros en la tabla 
update contactos set nombre = 'ANA MARIA' where nombre = 'ANA';  

--añadir una columna auto-incremental al principio de la tabla de tipo INT  
alter table contactos add column id integer auto_increment primary key first;

--eliminar un registro de una tabla
delete from contactos where id = '1';

--atencion!: no se puede ingresar un nuevo registro cuyo campo clave (primary key) coinicida con un valor prexistente
--                                              |
--                                              |
--                                              V
insert into contactos(id,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi)
values (1,...)

--Ahora sin indicar el id que ya existe
insert into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi)
values (1,...)

--CREACION DE TABLA CON CLAVE UNICA
create table personas(
    id integer auto_increment,
    cedula varchar (10),
    nombre varchar (60),
    apellido varchar (60),
    correo varchar (60),
    telefono_cel varchar(20),
    telefono_hab varchar(20),
    telefono_ofi varchar(20),
    primary key(id),
    unique(correo),
    unique(cedula)
);

--ingreso de datos a nueva tabla
Insert into personas(cedula,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
    ('V1234','ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321'),
    ('V5678','YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),
    ('V9012','NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');

--asociacion entre tablas
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