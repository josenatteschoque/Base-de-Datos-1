--Obtener los empleados que ganan más que el empleado 3.
SET search_path to bd2026p

SELECT nro_emp, nombre, apellido, salario

--Utilizo mi tabla
FROM empleados_tp21jose

--Filtro los salarios mayores al empleado 3
WHERE salario > (

	--Realizo una subconsulta
	SELECT salario

	--Utilizo mi tabla
	FROM empleados_tp21jose

	--Filtro al empleado numero 3
	WHERE nro_emp = 3 )

--Me fijaba los empleados
select *
from empleados_tp21jose