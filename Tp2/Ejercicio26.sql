--Empleados cuya fecha de alta es anterior al año 1999

SET search_path to bd2026p

SELECT nombre, apellido, fecha_alta, fecha_nac,
age(fecha_alta, fecha_nac) edad_ingreso,
age(CURRENT_DATE, fecha_nac) edad
FROM empleados_ng
WHERE EXTRACT(year FROM fecha_alta) > 1999