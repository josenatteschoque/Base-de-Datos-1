--Empleados (nombre y apellido) del departamento COMPRAS
SET search_path to bd2026p

SELECT nombre, apellido
--Ahora si uso mis tablas 
FROM empleados_tp21jose
--Filtro las busquedas con los que tenga el departamento de Compras = 50
WHERE depto = 50

--Otra forma de hacerlo que propuso la IA
SELECT e.nombre, e.apellido
FROM empleados_tp21jose e
JOIN departamentos_tp21jose d
    ON e.depto = d.nro_depto
WHERE d.nombre_depto = 'COMPRAS';