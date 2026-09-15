--Listar a todos los empleados mostrando solo su nombre, apellido y nro de
--departamento al cual pertenece ordenado por apellido.
set search_path to bd2026p

SELECT nombre, apellido , depto

--Estoy usando la tabla del profe
FROM empleados_ng

--Con esto ordeno las columnas
ORDER BY depto, nombre

