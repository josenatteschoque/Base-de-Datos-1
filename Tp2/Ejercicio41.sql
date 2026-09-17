--Mostrar nombre de los departamentos que tienen salarios mayores a 65000
--(probar con y sin distinct)

SET search_path to bd2026p

--Con DISTINCT
SELECT DISTINCT depto
FROM empleados_ng
WHERE salario > 65000


--Sin DISTINCT
SELECT depto
FROM empleados_ng
WHERE salario > 65000