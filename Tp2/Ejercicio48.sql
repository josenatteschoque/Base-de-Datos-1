--48. Que empleados ganan exactamente el salario máximo o mas del 90% del
--salario maximo de su nivel salarial.
SET search_path to bd2026p

SELECT e.nombre, e.apellido
--Utilizo la tabla del profe
FROM empleados_ng e
JOIN nivel_salarial_ng n
--Comparo que el salario a que nivel esta 
	ON (e.salario BETWEEN n.salario_min AND n.salario_max) 
	--Filtro los salarios que sean mayores al salario maximo * 90%
WHERE e.salario >= n.salario_max * 0.90

--Me fijo las tablas
SELECT e.nombre, e.salario, n.salario_min, n.salario_max
FROM empleados_ng e, nivel_salarial_ng n