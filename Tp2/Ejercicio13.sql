--Listar los nombres de los empleados del jefe 1 que están en departamento 20
SET search_path to bd2026p

SELECT emp.nombre, jef.nombre
--Le pongo un alias ala tabla
FROM empleados_ng AS emp, empleados_ng AS jef
WHERE emp.jefe = 1
AND emp.depto = 20
AND	emp.jefe = jef.nro_emp