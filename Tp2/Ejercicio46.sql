--46. Obtener por orden alfabético los nombres y apellido de los empleados cuyos
--sueldos igualan o superan al de Julia Ramirez en más del 15%.
SET search_path to bd2026p

SELECT em1.nombre, em1.apellido, em1.salario
--Utilizo la tabla de profe
FROM empleados_ng em1
--Realizo una subconsulta
WHERE em1.salario >= (SELECT e.salario * 1.15 --Multiplico el salario por 1.15 para el 15%
					  FROM empleados_ng e
					  WHERE e.nombre = 'Julia'
					  AND e.apellido = 'Ramirez')
					  
ORDER BY em1.nombre, em1.apellido

--Me fijaba la tabla
SELECT *
FROM empleados_ng