--Mostrar el nombre de cada empleado con el nombre de su jefe.
SET search_path to bd2026p

SELECT emp.nombre, jefes.nombre
FROM empleados_ng emp,
	(SELECT nombre, nro_emp FROM empleados_ng) jefes
WHERE emp.jefe = jefes.nro_emp

--Me fijo la tabla
select *
from empleados_ng