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

insert into estudiantes(
nombre, apellido) values
('ana', 'Vazquez'),
('jose', 'tripa'),
('rosaric', 'hernandez'),
('nicole', 'martinez');

insert into materias
(nombre) values
('Logica de programacion'),
('HTML5 nivel 1'),
('MYSQL'),
('postgresql'),
('javascript'),
('phyton');

insert into estudiantes_materias
(estudiante_id, materia_id) values
(1,1),(1,2),(1,3),(1,4),(1,6),
(2,2),(2,4),(2,6),
(3,1),(3,6),
(4,1),(4,3),(4,5);

--Consulta combinada de las 3 tablas 

select estudiantes.nombre,
    estudiantes.apellido,
    materias.nombre as asignatura
    from estudiantes, materias, estudiantes_materias 
    where estudiantes_materias.estudiante_id = estudiantes.id and 
    estudiantes_materias.materia_id = materias.id;

-- Vista de la consulta combinada entre las 3 tablas 
create view vista_estudiantes_materias as 
select estudiantes.nombre,
    estudiantes.apellido,
    materias.nombre as asignatura
    from estudiantes, materias, estudiantes_materias 
    where estudiantes_materias.estudiante_id = estudiantes.id and 
    estudiantes_materias.materia_id = materias.id;

-- columnas calculadas 
-- sumatoria de existencia 
select SUM(existencia) from vista_prov_prod;

-- promedio de precios 
select AVG(existencia) from vista_prov_prod;

--precio maximo
select MAX(precio) from vista_prov_prod;

-- precio minimo 
select MIN(precio) from vista_prov_prod;

-- cantidad de registros 
select count(*) from vista_prov_prod;

-- funciones 
-- operadores relacionales
-- >,>=,<,<=, <>
-- operadores logicoas 
-- and, or, not 


-- consultas condicionadas
-- rango de valores (and)
select producto, precio, existencia from vista_prov_prod
where precio >= 300 and precio <= 700;

--Equivalente
select producto, precio, existencia from vista_prov_prod
where precio BETWEEN 300 and 700; 

-- Lista de valores (or) 
select producto, precio, existencia from vista_prov_prod
where producto = 'nevera' or producto = 'cocina' or producto = 'lavadora';

-- equivalente
select producto, precio, existencia from vista_prov_prod
where producto in('nevera','cocina','lavadora');

-- Negacion 
-- rango de valores (and)
select producto, precio, existencia from vista_prov_prod
where  not precio >= 300 and precio <= 700;

--Equivalente
select producto, precio, existencia from vista_prov_prod
where not precio BETWEEN 300 and 700; 

-- Consulta de valores distintos contenidos en la tabla

select producto, precio, existencia from vista_prov_prod
where producto in('nevera','cocina','lavadora');

-- ejemplo 
select distinct producto,
min(precio) as precio_minimo,
max(precio) as precio_maximo,
avg(precio) as precio_promedio,
sum(existencia) as existencia
from vista_prov_prod 
group by producto;


create view vista_resumen_productos as
select distinct producto,
min(precio) as precio_minimo,
max(precio) as precio_maximo,
 round(avg(precio),2) as precio_promedio,
sum(existencia) as existencia
from vista_prov_prod 
group by producto;


--Ejemplo2
create view vista_resumen_proveedores as
select distinct proveedor,
min(precio) as precio_minimo,
max(precio) as precio_maximo,
 round(avg(precio),2) as precio_promedio,
sum(existencia) as existencia
from vista_prov_prod 
group by proveedor;



C: xampp






































































































































