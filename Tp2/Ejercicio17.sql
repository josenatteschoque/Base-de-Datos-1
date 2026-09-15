--Cantidad de empleados de cada departamento que tenga más de 2 personas
SET search_path to bd2026p

SELECT depto, COUNT(nombre)
--Sigo utilizando la tabla del profe
FROM empleados_ng
GROUP BY depto
--Es una condicion para un resultado
HAVING COUNT(nombre) >= 2
