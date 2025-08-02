mysql -u root -p

-- creación de base de datos
create database bd_gabriel_20250802;

--conexion a la base de datos 
use bd_gabriel_20250802;



-- creacion de tablas
create table contactos(
nombre varchar(60), 
apellido varchar(60),
telefono varchar(20),
correo varchar(60)); 

-- Ver tablas de la base de datos 
show tables; 

-- Ver bases de datos en el servidor 
show databases like '%_20250802%'; 

-- ver estructura de la tabla 
describe contactos; 

-- Otra forma de ver las estructuras de las tablas 
show create table contactos; 

-- borrar campo de una tabla 
alter table contactos drop column telefono;

-- añadir un campo al comienzo de la tabla 
alter table contactos add column telefono_hab varchar(20) first;

-- añadir  un campo al final de la tabla 
alter table contactos add column telefono_cel varchar(20);


-- añadir un campo despues de un campo pre existente 
alter table contactos add column telefono_ofic varchar(20) after apellido;

-- cambiar el tipo de dato para un campo 
alter table contactos change column telefono_hab telefono_hab integer;

-- cambiar nombre de campo y conservar el mismo tipo de dato
alter table contactos change column telefono_hab telf_hab integer;

-- CRUD (CREATE, READ, EPDATE, DELETE)


-- ingreso de datos 
insert into contactos(nombre,apellido,correo,telefono_cel, telefono_hab, telefono_ofi) values 
('gabo','hernandez','AH@gmail.com','+581532546247','+583284234','+583443098249');

-- Ingreso de varios registros
insert into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
('YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),
('NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');

-- consulta de todos los campos contenidos en la tabla
select * from contactos;

-- consulta de algunos campos de la tabla
select nombre, apellido, correo from contactos;

-- consulta condicionada de la tabla
select * from contactos where nombre = 'ANA';

-- consulta de la tabla contactos, donde el campo telefono_hab contenga
-- el como parte del valor '212'
select * from contactos where telefono_hab like '%212%' and 
telefono_cel like '%414%';

-- actualizacion de registros de la tabla 
UPDATE contactos set nombre = 'ANA MARIA' where nombre = 'ANA';

-- ¿qué sucede si se omite el condicional?
-- todos los campos se ven afectados por la actualización
update contactos set nombre = 'ANA MARIA';

-- actualización individual de los nombres
update contactos set nombre = 'NELLY' where correo = 'NC@GMAIL.COM';
update contactos set nombre = 'YOLANDA' where correo = 'YT@GMAIL.COM';


-- Anadir una columna al principio de la tabla de tipo integer auto_increment


alter table contactos add column id integer auto_increment primary key first;


--borrar uno de los registros duplicados 
DELETE from contactos where id = 4;

-- atencion= no se puede ingresar un nuevo registro, cuyo campo
-- clave (clave primaria) coincida con un valor pre existente.
--               +-- campo clave(primary key)


insert into contactos(id,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
(1,'SUSANA','PEREZ','SP@GMAIL.COM','+58 212 7876543','+58 414 7234567','+58 212 8654321');

-- ahora sin indicar campo 'id' que se encuentra ocupado
--                    +-- No se indica el campo 'id'
--                    |
--                    v
insert into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
('SUSANA','PEREZ','SP@GMAIL.COM','+58 212 7876543','+58 414 7234567','+58 212 8654321');

-- creacion de clave unica 
-- creacion de tablas
-- un campo al ser delcarado 'primary key' ya es unica 
-- si se requiere que otro campo sea unico y no es clave primaria 
-- se delcara o se emplea la instruccion 'unique' 
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

insert into contactos(nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values

insert into personas(cedula,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
('V1234','ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321'),
('V5678','YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),
('V9012','NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');

-- Otra forma
insert into personas(id,cedula,nombre,apellido,correo,telefono_hab,telefono_cel,telefono_ofi) values
(null,'V1234','ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321'),
(null,'V5678','YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),
(null,'V9012','NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');


-- asociacion entre tablas 
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
foreign key(proveedor_id) references proveedor_id

);















