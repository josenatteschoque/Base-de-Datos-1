--60. Datos de los empleados que cobran el salario máximo de su
--departamento y están por encima del salario medio de la empresa.
SET search_path to bd2026p

SELECT e3.nombre, e3.apellido, e3.salario, e3.depto
FROM empleados_ng e3
WHERE e3.salario IN ( SELECT MAX(e1.salario)
					  FROM empleados_ng e1
					  WHERE e1.salario > (SELECT AVG(e2.salario)
										  FROM empleados_ng e2)
					  GROUP BY e1.depto)
