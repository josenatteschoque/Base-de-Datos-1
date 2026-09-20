--Suma de los salarios agrupados por depto ordenados en forma descendente.
--Se deberá mostrar el nro de depto, nombre del depto y el total
SET search_path to bd2026p

--Realiazo la sumatoria de todos los salarios
SELECT dep.nro_depto, dep.nombre_depto, SUM(emp.salario) AS suma_total

--Uso mis tablas
FROM empleados_tp21jose emp

--Relaciono 2 tablas 
JOIN departamentos_tp21jose dep
	ON emp.depto = dep.nro_depto

--Los agrupo de esa forma
GROUP BY nro_depto, nombre_depto

--Los ordeno de forma descendentes
ORDER BY suma_total  DESC
