INSERT INTO estudiantes_materias(
    estudiante_id integer,
    materia_id integer,
    primary key(estudiante_id,materia_id),
    foreign key(estudiante_id) references estudiantes
);

INSERT INTO estudiantes(nombre,apellido)
 VALUES
('ANA','VASQUEZ'),
('YOLANDA','TORTOZA'),
('LIBIA','COLS'),
('HERDRINA','MONASTERIOS');

INSERT INTO materias
(nombre) VALUES
('LOGICA DE PROGRAMACION'),
('HTML5 NIVEL I'),
('MYSQL'),
('POSTGRESQL'),
('JAVASCRIPT'),
('PYTHON');

INSERT INTO estudiantes_materias
(estudiante_id,materia_id)VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),
(2,2),(2,4),(2,6),
(3,1),(3,6),
(4,1),(4,3),(4,5);

--Consulta combinando las 3 tablas
SELECT 
estudiantes.nombre,
estudiantes.apellido,
materias.nombre as asignatura
from estudiantes, materias, estudiantes_materias
where estudiantes_materias.estudiante_id = estudiantes.id and
estudiantes_materias.materia_id = materias.id;

--Vista de la consulta de combinada entre las 3 tablas
CREATE VIEW vista_estudiantes_materias AS 
SELECT 
estudiantes.nombre,
estudiantes.apellido,
materias.nombre as asignatura
from estudiantes, materias, estudiantes_materias
where estudiantes_materias.estudiante_id = estudiantes.id and
estudiantes_materias.materia_id = materias.id;

--Columnas calculadas
--Sumatoria de existencia
SELECT
SUM(existencia)
FROM
vista_prov_prod;

--promedio de precios
SELECT
AVG(existencia)
FROM 
vista_prov_prod;

--precio maximo
SELECT
MIN(existencia)
FROM 
vista_prov_prod;

--preico minimo
SELECT
MIN(existencia)
FROM 
vista_prov_prod;

--Cantidad de registros
SELECT 
COUNT(*)
FROM 
vista_prov_prod;

--Funciones, Operadores relacionales
<, >, <=, >=, =, <>

--Operadores logicos
SELECT
producto,
precio,
existencia
FROM
vista_prov_prod
WHERE
precio >= 300 
AND precio >= 700;

--Son equivalentes

WHERE
precio BETWEEN 300 AND 700

--lista de valores (OR)
SELECT
producto,
precio,
existencia
FROM
vista_prov_prod
WHERE
producto = 'NEVERA' OR producto = 'COCINA' OR producto = 'LAVADORA'

--Es equivalente a
WHERE
producto IN ('NEVERA', 'COCINA', 'LAVADORA');

--Caso para negacion o exclusion
SELECT
nombre,
precio,
existencia
FROM
vista_prov_prod
WHERE
NOT (precio BETWEEN 300 AND 700);

--
SELECT
nombre,
precio,
existencia
FROM
vista_prov_prod
WHERE
nombre NOT IN ('NEVERA', 'COCINA', 'LAVADORA');

--Consulta de valores distintos contenidos en la tabla
SELECT DISTINCT
nombre
FROM
vista_prov_prod;

--Ejercicio de consulta
SELECT DISTINCT
nombre,
MIN(precio),
MAX(precio),
AVG(precio),
existencia
FROM
vista_prov_prod
GROUP BY
nombre;

--por proveedor
SELECT DISTINCT
nombre,
MIN(precio),
MAX(precio),
AVG(precio),
existencia
FROM
vista_prov_prod
GROUP BY
nombre;

--Creacion de vistas
CREATE VIEW vista_resumen_productos AS
SELECT DISTINCT
nombre,
MIN(precio),
MAX(precio),
AVG(precio),
existencia
FROM
vista_prov_prod
GROUP BY
nombre;

CREATE VIEW vista_resumen_proveedores AS 
SELECT DISTINCT
proveedor,
MIN(precio),
MAX(precio),
AVG(precio),
existencia
FROM
vista_prov_prod
GROUP BY
proveedor;