--Mostrar el promedio de los salarios por departamento
SET search_path to bd2026p

SELECT dep.nro_depto, AVG(emp.salario) AS promedio
--Utilizo mis tablas
FROM empleados_tp21jose emp

--Convino 2 tablas 
JOIN departamentos_tp21jose dep
	ON emp.depto = dep.nro_depto

--Agrupo por el nro de departamento
GROUP BY dep.ro_depto	

--Ordeno por el promedio de menor a mayor
ORDER BY promedio
