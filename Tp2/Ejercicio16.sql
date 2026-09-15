--Cuantos empleados tiene cada departamento?
SET search_path to bd2026p

SELECT depto, COUNT(nombre)
--Sigo utilizando la tabla del profe
FROM empleados_ng
--Agrupa resultados de las columnas o varias columnas
GROUP BY depto
