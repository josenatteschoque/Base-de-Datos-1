--Obtener los empleados y su mes de incorporación siempre que esté entre los
--meses de Enero y Junio (ambos inclusive).
SET search_path to bd2026p

SELECT nombre, fecha_alta
FROM empleados_ng
--Filtro la busquedad con el mes que obtengo si esta entre 1 y 6
WHERE EXTRACT(month FROM fecha_alta) BETWEEN '01' AND '06'