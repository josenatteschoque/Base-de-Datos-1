--Obtener por orden alfabético el nombre y el salario de aquellos empleados que
--comienzan por la letra “M”
SET search_path to bd2026p

SELECT nombre, salario
--Sigo utilizando la tabla del profesor
FROM empleados_ng
--ILIKE sirve para comparar cadenas de caracteres
WHERE nombre ILIKE 'm%'


--Tambien podria ser asi
--WHERE nombre == 'm%'
