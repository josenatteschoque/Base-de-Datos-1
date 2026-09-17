--Obtener los empleados cuyo día de la semana de su incorporación fue Viernes.
SET search_path to bd2026p

--Primera forma de resorverlo
SELECT nombre, fecha_alta
--Sigo utilizando la tabla del profe
FROM empleados_ng
--Comparo el dia extraido con el 5 que seria el viernes
WHERE EXTRACT(dow FROM fecha_alta) = 5


--Segunda forma de resorverlo--
SELECT nombre, fecha_alta
FROM empleados_ng
WHERE to_char(fecha_alta, 'd') = '6'
