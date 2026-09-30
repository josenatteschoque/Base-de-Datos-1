SET  search_path to bd2026p
--51. Consultas con EXISTS.
--Ejemplo: Obtener los nombres y el salario de los empleados del departamento 10
--si en él hay alguno que gane más de 60000 pesos:

SELECT nombre, salario
FROM empleados_ng
WHERE depto=10 
AND EXISTS (SELECT * FROM empleados_ng WHERE
depto=10 AND salario > 60000);

--Resolver:
--a) Obtener los nombres y el salario de los empleados del departamento
--20 si en él hay alguno que su premio sea mayor a 10000 y tenga más
--de 2 hijos.
--b) Obtener, por orden alfabético, los nombres y salarios de los empleados
--del departamento 30 que tienen premio si hay alguno de ellos cuyo
--premio supere al 10% de su salario.

