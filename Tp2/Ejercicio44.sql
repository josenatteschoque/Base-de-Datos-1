--Obtener los empleados, alfabéticamente, que están en el mismo departamento
--que el empleado 3 mostrando el nombre del departamento y el salario de cada
--empleado.
SET search_path to bd2026p

SELECT emp.nro_emp, emp.nombre, emp.apellido, emp.salario, dep.nombre_depto

--Utilizo mi tabla
FROM empleados_tp21jose emp

--Junto ambas tablas para obtener el nombre del departamento
JOIN departamentos_tp21jose dep
	ON emp.depto = dep.nro_depto
	
--Filtro el departamento igual al empleado 3
WHERE depto = (

	--Realizo una subconsulta
	SELECT depto

	--Utilizo mi tabla
	FROM empleados_tp21jose

	--Filtro al empleado numero 3
	WHERE nro_emp = 3 )
ORDER BY emp.nombre


--Me fijaba los empleados
select *
from empleados_tp21jose