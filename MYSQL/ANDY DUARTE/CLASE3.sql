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


insert into estudiantes(nombre,apellido)values
('ANA','VASQUEZ'),
('YOLANDA','TORTOZA'),
('LIBIA','COLS'),
('HERDRINA','MONASTERIOS');

insert into materias(nombre)values
('LOGICA DE PROGRAMACION'),
('HTML5 NIVEL 1'),
('MYSQL'),
('POSTGRESQL'),
('JAVASCRIPT'),
('PYTHON');

insert into estudiantes_materias(estudiante_id,materia_id)values
('1','1'),('1','2'),('1','3'),('1','4'),('1','5'),('1','6'),
('2','2'),('2','4'),('2','6'),
('3','1'),('3','6'),
('4','1'),('4','3'),('4','5');



-- consulta combinada de las 3 tablas

select estudiantes.nombre,
       estudiantes.apellido,
       materias.nombre as asignatura
       from estudiantes, materias , estudiantes_materias
       where estudiantes_materias.estudiante_id = estudiantes.id and
       estudiantes_materias.materia_id = materias.id;

--vista de la consulta combinaDA DE LAS 3 TABLAS
create view vista_estudiantes_materias AS
select estudiantes.nombre,
       estudiantes.apellido,
       materias.nombre as asignatura
       from estudiantes, materias , estudiantes_materias
       where estudiantes_materias.estudiante_id = estudiantes.id and
       estudiantes_materias.materia_id = materias.id;


--columnas calculadas 
--sumatoria de existencia 
select sum(existencia) from vista_prov_prod;

--promedio de precios 
select AVG(existencia) from vista_prov_prod;

-- precio maximo                                                                         
select MAX(precio) from vista_prov_prod;


--precio minimo 
select MIN(precio) from vista_prov_prod;

--cantidad de registros;
select count(*) from vista_prov_prod;

--consultas condicionadas
select producto,precio,existencia
        from vista_prov_prod
        where precio >=300 and precio <=700;


--equivalente
select producto,precio,existencia
        from vista_prov_prod
        where precio between 300 and 700;


--lista de valores(or)
select producto, precio, existencia from vista_prov_prod
where producto = 'NEVERA' OR producto= 'COCINA' OR producto = 'LAVADORA';

--EQUIVALENTE 
Select producto, precio, existencia from vista_prov_prod
where producto IN ('NEVERA','COCINA','LAVADORA');


--NEGACION
select producto,precio,existencia from vista_prov_prod
where NOT ( precio >=300 and precio <=700);


--equivalente
select producto,precio,existencia from vista_prov_prod
where NOT (precio between 300 and 700);

--NEGACION
--lista de valores(or)
select producto, precio, existencia from vista_prov_prod
where NOT (producto = 'NEVERA' OR producto= 'COCINA' OR producto = 'LAVADORA');

--EQUIVALENTE 
Select producto, precio, existencia from vista_prov_prod
where NOT (producto IN ('NEVERA','COCINA','LAVADORA'));


--consulta de valores distintod contenidos en la tabla
select distinct producto from vista_prov_prod;

--ejemplo:
select distinct producto, min(precio),MAX(precio),AVG(precio),sum(existencia) 
from vista_prov_prod group by producto;

select distinct producto,
 min(precio)as precio_minimo,
 MAX(precio) AS precio_maximo,
 round(AVG(precio),2)as precio_promedio,
 sum(existencia) as existencia
from vista_prov_prod 
group by producto;

--ejemplo2:
select distinct proveedor,
 min(precio)as precio_minimo,
 MAX(precio) AS precio_maximo,
 round(AVG(precio),2)as precio_promedio,
 sum(existencia) as existencia
from vista_prov_prod 
group by proveedor;


create view vista_resumen_productos as
select distinct producto,
 min(precio)as precio_minimo,
 MAX(precio) AS precio_maximo,
 round(AVG(precio),2)as precio_promedio,
 sum(existencia) as existencia
from vista_prov_prod 
group by producto;


create view vista_resumen_proveedores as
select distinct proveedor,
 min(precio)as precio_minimo,
 MAX(precio) AS precio_maximo,
 round(AVG(precio),2)as precio_promedio,
 sum(existencia) as existencia
from vista_prov_prod 
group by proveedor;

--backup
C:\xampp\mysql\bin\mysqldump -u root -p bd_andy_20250802 > respaldos/backup_20250816.sql