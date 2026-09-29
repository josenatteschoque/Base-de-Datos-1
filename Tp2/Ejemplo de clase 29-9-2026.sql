SET  search_path to bd2026p

SELECT emp.nombre, emp.depto, dep.nombre_depto
FROM empleados_ng emp
JOIN departamentos_ng dep
	ON (emp.depto = dep.nro_depto)


--Este devuelve los empleados que no tenga una interseccion 
SELECT emp.nombre, emp.depto, dep.nombre_depto
FROM empleados_ng emp
LEFT JOIN departamentos_ng dep
	ON (emp.depto = dep.nro_depto)

--Este me devuele los departamentos sin empleados
SELECT emp.nombre, emp.depto, dep.nombre_depto
FROM empleados_ng emp
RIGHT JOIN departamentos_ng dep
	ON (emp.depto = dep.nro_depto)