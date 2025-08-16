-- ASOCIACIÓN DE MUCHOS A MUCHOS (4TA. FORMA NORMAL)
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

create table estudiantes_materias(
    estudiante_id integer,
    materia_id integer,
    primary key(estudiante_id, materia_id),
    foreign key(estudiante_id) references estudiantes(id),
    foreign key(materia_id) references materias(id)
);

insert into estudiantes
    (nombre, apellido) values
    ('ANA','VASQUEZ'),
    ('YOLANDA', 'TORTOZA'),
    ('LIBIA', 'COLS'),
    ('HERDRINA','MONASTERIOS');

insert into materias
    (nombre) values 
    ('LOGICA DE PROGRAMACION'),
    ('HTML5 NIVEL I'),
    ('MYSQL'),
    ('POSTGRESQL'),
    ('JAVASCRIPT'),
    ('PYTHON');

insert into estudiantes_materias
(estudiante_id, materia_id) values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),
(2,2),(2,4),(2,6),
(3,1),(3,6),
(4,1),(4,3),(4,5);

-- CONSULTA COMBINADA DE LAS 3 TABLAS
SELECT estudiantes.nombre,
       estudiantes.apellido,
       materias.nombre as asignatura
       from estudiantes, materias, estudiantes_materias
       where estudiantes_materias.estudiante_id = estudiantes.id and
       estudiantes_materias.materia_id = materias.id;

-- VISTA DE LA CONSULTA COMBINADA ENTRE LAS 3 TABLAS
CREATE VIEW vista_estudiantes_materias AS
SELECT estudiantes.nombre,
       estudiantes.apellido,
       materias.nombre as asignatura
       from estudiantes, materias, estudiantes_materias
       where estudiantes_materias.estudiante_id = estudiantes.id and
       estudiantes_materias.materia_id = materias.id;

-- COLUMNAS CALCULADAS
-- SUMATORIA DE EXISTENCIA
SELECT SUM(existencia) FROM vista_prov_prod;

-- PROMEDIO DE PRECIOS
SELECT AVG(existencia) FROM vista_prov_prod;

-- PRECIO MÁXIMO
SELECT MAX(precio) from vista_prov_prod;

-- PRECIO MÍNIMO
SELECT MIN(precio) from vista_prov_prod;

-- CANTIDAD DE REGISTROS;
SELECT COUNT(*) from vista_prov_prod;

-- CÁLCULOS DE CUALQUIER INDOLE

-- SUBSTRACIÓN DE DOS NÚMEROS:
SELECT (48-35);

MariaDB [bd_henry_20250802]> help functions
You asked for help about help category: "Functions"
For more information, type 'help <item>', where <item> is one of the following
categories:
   Bit Functions
   Comparison Operators
   Control Flow Functions
   Date and Time Functions
   Dynamic Column Functions
   Encryption Functions
   Information Functions
   JSON Functions
   Logical Operators
   Miscellaneous Functions
   Numeric Functions
   Spider Functions
   String Functions
   Window Functions

SELECT DES_ENCRYPT('SECRETO');

-- FUNCIONES
-- OPERADORES RELACIONALES
-- >, >=, <, <=, =, <>
-- OPERADORES LÓGICOS
-- AND, OR, NOT

-- CONSULTAS CONDICIONADAS
-- RANGO DE VALORES (AND)
SELECT producto, precio, existencia FROM vista_prov_prod 
where precio >= 300 and precio <= 700;

-- EQUIVALENTE 
SELECT producto, precio, existencia FROM vista_prov_prod 
where precio BETWEEN 300 and 700;

-- LISTA DE VALORES (OR)
SELECT producto, precio, existencia FROM vista_prov_prod 
where producto = 'NEVERA' OR producto = 'COCINA' OR producto = 'LAVADORA';

-- EQUIVALENTE 
SELECT producto, precio, existencia FROM vista_prov_prod 
where producto IN('NEVERA','COCINA','LAVADORA');

-- NEGACIÓN
-- RANGO DE VALORES (AND)
SELECT producto, precio, existencia FROM vista_prov_prod 
where NOT (precio >= 300 and precio <= 700);

-- EQUIVALENTE 
SELECT producto, precio, existencia FROM vista_prov_prod 
where NOT (precio BETWEEN 300 and 700);

-- NEGACIÓN
-- LISTA DE VALORES (OR)
SELECT producto, precio, existencia FROM vista_prov_prod 
where not (producto = 'NEVERA' OR producto = 'COCINA' OR producto = 'LAVADORA');

-- EQUIVALENTE 
SELECT producto, precio, existencia FROM vista_prov_prod 
where not producto IN('NEVERA','COCINA','LAVADORA');

-- CONSULTA DE VALORES DISTINTOS CONTENIDOS EN LA TABLA
SELECT DISTINCT PRODUCTO FROM VISTA_PROV_PROD;

-- EJEMPLO 1:
SELECT DISTINCT producto,
min(precio) as precio_minimo,
max(precio) as precio_maximo,
round(avg(precio),2) as precio_promedio,
sum(existencia) as existencia
from vista_prov_prod
group by producto;

create view vista_resumen_productos as
SELECT DISTINCT producto,
min(precio) as precio_minimo,
max(precio) as precio_maximo,
round(avg(precio),2) as precio_promedio,
sum(existencia) as existencia
from vista_prov_prod
group by producto;

-- EJEMPLO 2:
SELECT DISTINCT nombre,
min(precio) as precio_minimo,
max(precio) as precio_maximo,
round(avg(precio),2) as precio_promedio,
sum(existencia) as existencia
from vista_prov_prod
group by nombre;

create view vista_resumen_proveedores as
SELECT DISTINCT nombre,
min(precio) as precio_minimo,
max(precio) as precio_maximo,
round(avg(precio),2) as precio_promedio,
sum(existencia) as existencia
from vista_prov_prod
group by nombre;










