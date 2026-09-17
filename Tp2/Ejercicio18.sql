--Listar los nombre y apellido de los empleados y el nombre del depto al cual
--pertenecen ordenado por nombre del departamento.
SET search_path to bd2026p

SELECT nombre, apellido, nombre_depto
--Sigo utilizando las tablas del profesor
FROM empleados_ng, departamentos_ng
--Junto a un empleado con su numero de departamento
WHERE empleados_ng.depto = departamentos_ng.nro_depto
--Ordeno por el nombre del departamento
ORDER BY nombre_depto