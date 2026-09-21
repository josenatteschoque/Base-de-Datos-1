--Que empleados ingresaron el dia 2 de cualquier mesç
SET search_path to bd2026p

SELECT nombre, fecha_alta

--Utilizo mi propia tabla
FROM empleados_tp21jose

--Filtro la busqueda con aquellos que hayan ingresado el dia 2 
WHERE EXTRACT(DAY FROM fecha_alta) = 2

