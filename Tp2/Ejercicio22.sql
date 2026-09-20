--Total de los salarios de los empleados de cada jefe.
SET search_path to bd2026p

SELECT j.nro_emp, SUM(e.salario) AS suma

FROM empleados_tp21jose e

JOIN empleados_tp21jose j
	ON e.jefe = j.nro_emp
GROUP BY j.nro_emp
ORDER BY suma
