--49. Decir que hace cada una de las siguientes consultas
SET search_path to bd2026p

--1
SELECT depto, sum(salario)
FROM empleados_ng
WHERE depto IS NOT NULL
GROUP BY depto
HAVING sum(salario) >= ALL(SELECT sum(salario)
FROM empleados_ng WHERE depto IS NOT NULL
GROUP BY depto);

--2
SELECT nombre, salario, depto
FROM empleados_ng
--IN compara los valores que esten incluidos con el segundo conjunto
WHERE salario IN (SELECT MIN(salario) FROM
empleados_ng GROUP BY depto)

--3. 
SELECT nro_emp, nombre, salario
FROM empleados_ng
--ANY filtra la subconsulta
WHERE salario < ANY (SELECT salario FROM empleados_ng
WHERE depto = 30)

--4. 
SELECT nro_emp, nombre, salario
FROM empleados_ng
WHERE salario < ALL (SELECT salario FROM empleados_ng
WHERE depto = 30)
