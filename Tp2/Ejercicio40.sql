--Obtener el nivel salarial de cada empleado (mostrar nro de empleado, nombre,
--apellido, salario y nivel salarial)
SET search_path to bd2026p

SELECT emp.nro_emp, emp.nombre, emp.apellido, emp.salario, niv.nivel
FROM empleados_tp21jose emp
JOIN nivel_salarial_tp21jose niv
	ON emp.salario BETWEEN niv.salario_min AND niv.salario_max