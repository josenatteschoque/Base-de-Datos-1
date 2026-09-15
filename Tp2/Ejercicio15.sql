--Cuantos empleados tiene el departamento 20?
SET search_path to bd2026p

--Con COUNT cuento los elementos que hay 
SELECT COUNT(*)
--Sigo utilizando la tabla de profe
FROM empleados_ng
WHERE depto = 20

--Con AVG() me devuelve el promedio
SELECT AVG(salario)
FROM empleados_ng
WHERE depto = 20

--Con SUM() me devuelve su suma
SELECT SUM(salario)
FROM empleados_ng
WHERE depto = 20
