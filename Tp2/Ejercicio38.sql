--Calcular el máximo de los promedio de los salarios por departamento
SET search_path to bd2026p

SELECT depto, AVG(salario)
FROM empleados_ng
--Esto Agrupa todos los elmentos que tenga el mismo valor de las columans
GROUP BY depto