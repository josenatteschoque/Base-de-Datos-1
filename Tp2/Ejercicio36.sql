--Probar mostrar la fecha de alta de los empleados y la semana anterior a ella
SET search_path to bd2026p

SELECT 
	fecha_alta, 
--INTERVAL indica que cantidad de tiempo 
	fecha_alta - INTERVAL '1 week' AS semana_anterior
--Utilizo mi tabla
FROM empleados_tp21jose
