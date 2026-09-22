--Suma de los salarios agrupados por depto, de la zona SUR y cuya suma sea
--superior a 90000.
SET search_path to bd2026p

SELECT dep.nro_depto, SUM(emp.salario) AS suma_salario

--Utilizo mis tablas
FROM empleados_tp21jose emp

JOIN departamentos_tp21jose dep
	ON  emp.depto = dep.nro_depto

--Filtro solo la zona si es SUR
WHERE emp.zona = 'SUR'	

--Agrupo por el nro de departamento
GROUP BY dep.nro_depto

--Solo me quedo con los que sea mayores a 90000
HAVING SUM(emp.salario) > 90000