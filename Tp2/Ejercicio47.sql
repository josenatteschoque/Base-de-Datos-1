--47. Obtener los empleados que cobran el mínimo sueldo de la empresa.
SET search_path to bd2026p

SELECT e.nombre, e.apellido, e.salario
--Utilizo la tabla del profe
FROM empleados_ng e
--Realizo una subconsulta para obtener el minimo salario
WHERE e.salario = (SELECT MIN(e1.salario)
					FROM empleados_ng e1)

--Me fijo el salario minimo 
SELECT nombre, salario
FROM empleados_ng