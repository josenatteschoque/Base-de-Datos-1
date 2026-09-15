--Listar los nombres de los empleados del departamento 10 que ganan más de
--75000$.
SET search_path to bd2026p

SELECT nombre
--Sigo utilizando la tabla del profesor
FROM empleados_ng

WHERE salario > 75000
AND depto = 10
