--ACESSO a mysql 
# mysql -u root -p


-- creacion de base de batos 
create database bd_Andy_20250802;

-- conexion con la bdd
use bd_Andy_20250802;

--creacion de tablas 
create table contactos(
nombre varchar(60),
apellido varchar(60),
telefono varchar(20),
correo varchar(60));

--ver tablas de la base de datos 
show tables;

--ver bdd en el servidor
show databases like '%_20250802%';

--ver estructura de la tabla 
describe contactos;

--otra forma de ver la estructura de una tabla 
show create table contactos;

--borrar campo de una tabla 
alter table contactos drop column telefono;

--añadir un campo al comienzo de la tabla 
alter table contactos add column telefono_hab varchar(20) first;

--añadir un campo al final de la tabla 
alter table contactos add column telefono_cel varchar(20);


--añadir un campo despues de un campo pre existente tabla 
alter table contactos add column telefono_ofic varchar(20) after apellido;

--cambiar el tipo de datos para un campo 
alter table contactos change column telefono_hab telefono_hab integer;

--cambiar el nombre de un campo y conservar el mismo tipo de datos 
alter table contactos change column telefono_hab telf_hab integer;

--CRUD(CREATE, READ, UPDATE, DELETE)
--Equivale a las operaciones INSERT,SELECT,UPDATE Y DELETE

--ingreso de datos
INSERT into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi)values
('ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321');

--ingreso de varios datos
iNSERT into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi)values
('lius','VASZ','AV55@GMAIL.COM','+58 612 9876543','+58 414 1239567','+58 212 7654361'),
('jorge','mesquia','333@GMAIL.COM','+58 612 111543','+58 414 1269567','+58 212 7633361');

-- consulta de todos los campos contenidos en la tabla 
SELECT * from contactos;

--consulta de algunos campos de la tabla
SELECT nombre,apellido,correo from contactos;

-- consulta condicionada de la tabla 
SELECT * from contactos where nombre= 'ANA';


-- consulta  de la tabla contactos, donde el campo telefono_hab contenga como parte del '212'
SELECT * from contactos where telefono_hab like '%212%';


SELECT * from contactos where telefono_hab like '%212%' and telefono_cel like '%414%';

--actualizacion de registro en la tabla 
UPDATE contactos set nombre= 'ANA MARIA' where nombre = 'ANA'; 


--que pasa si se omtie el condicional 
--todos los campós se ven afectados por la actualizacion
UPDATE contactos set nombre= 'ANA MARIA';

--actualizacion individual de los nombres
UPDATE contactos set nombre= 'NELLY' where correo = 'AV55@GMAIL.COM'; 
UPDATE contactos set nombre= 'YOLANDA' where correo = '333@GMAIL.COM'; 


--AÑADIR UNA COLUMNA AL PRINCIPIO DE LA TABLA DE TIPO INTEGER AUTO_INCReMENT
alter TABLE contactos add column id integer auto_increment primary key first;

--borrar uno de los registros duplicados 
DELETE from contactos where id = 4;

--Atencion: no se puede ingresar un nuevo registro , cuyo campo clave(clave primaria )coincida con un valor pre existente

INSERT into contactos(id,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi)values
(1,'ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321');

--ahora sin indicar campo 'id' que se encuentra opcupado
INSERT into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi)values
('ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321');

--creacion de tabla con clave primaria y clave unica
-- un caMPO a ser declarado primary key ya es unico ahora, si se requiere que otro campo sea unico y no es clave primaria, se emplea la instrucion 'unique' 
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
unique(correo),
unique(cedula));

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


--- prueba de inserccion de registro con campo unico pre existente
--correo ya registrado
INSERT into personas(id,cedula,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi)values
('v1333','luis','VASQUEZ','yt@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321');

--- prueba de inserccion de registro con campo unico pre existente
--cedula ya registrado
INSERT into personas(id,cedula,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi)values
('v9012','luis','VASQUEZ','op@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321');

-- Asociacion entre tablas
CREATE table proveedores(
    id integer auto_increment,
    nombre varchar(80),
    direccion text,
    telefono varchar(30),
    correo varchar(80),
    primary key(id),
    unique(correo)
);

CREATE table productos(
    id integer auto_increment,
    proveedor_id integer,
    nombre varchar(80),
    precio numeric(13,2),
    existencia integer,
    primary key(id),
    foreign key(proveedor_id)references proveedores(id)
);