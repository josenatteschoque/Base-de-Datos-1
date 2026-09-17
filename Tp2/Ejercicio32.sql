--Obtener la fecha de contratación más antigua, la más moderna y cantidad de
--años entre ambas.
SET search_path to bd2026p

SELECT MAX(fecha_alta), MIN(fecha_alta), 
EXTRACT(YEAR FROM age(MAX(fecha_alta), MIN(fecha_alta)))
--Sigo utilizando la tabla del profe
FROM empleados_ng

