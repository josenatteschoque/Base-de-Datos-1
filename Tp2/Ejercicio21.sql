--Empleados cuyo premio es mayor que la mitad de su salario.
SET search_path to bd2026p

SELECT nombre, salario, premio
--Utilizo mi tabla
FROM empleados_tp21jose
--Filtro alos empleados cuyos premio sea mayor ala mitad de su salario
WHERE premio > salario/2