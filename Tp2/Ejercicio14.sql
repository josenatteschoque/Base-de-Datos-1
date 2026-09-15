--Listar los números de empleados, nombre, apellido y sus salarios ordenados
--por salario de mayor a menor.
SET search_path to bd2026p

SELECT nro_emp, nombre, apellido, salario
--Sigo utilizando la tabla del Profe
FROM empleados_ng
--Los ordeno de mayor a menor
ORDER BY salario DESC 