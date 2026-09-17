--Mes de incorporación de cada empleado (el mes en nro y en letras)
SET search_path to bd2026p

--Extraigo el mes del la fecha en un entero
SELECT EXTRACT(month FROM fecha_alta),
--to_char() convierte una fecha a un String y la muestra con letra grande
to_char(fecha_alta, 'MONTH')
--Sigo utilizando la tabla del profe
FROM empleados_ng
