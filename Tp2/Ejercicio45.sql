--Lo mismo que el punto anterior pero además solo queremos los empleados que
--ganen más que el empleado 3, obteniendo así sus compañeros de departamento
--que ganan más que él.
SET search_path to bd2026p

SELECT nro_emp, nombre, apellido, salario, depto

--Utilizo mi tabla
FROM empleados_tp21jose
	
--Filtro el departamento igual al empleado 3
WHERE depto = (

	--Realizo una subconsulta
	SELECT depto

	--Utilizo mi tabla
	FROM empleados_tp21jose

	--Filtro al empleado numero 3
	WHERE nro_emp = 3 )
	--Filtro los salarios mayores al del empleado 3
AND salario > (
	SELECT salario
	FROM empleados_tp21jose
	WHERE nro_emp = 3
)

--Me fijaba los empleados
select *
from empleados_tp21jose