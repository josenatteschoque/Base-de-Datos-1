--Hallar, por orden alfabético, los nombres de los empleados tales que si se les
--da una gratificación de 15000 $ por hijo, el total de esta gratificación supera el
--5% de su salario.
--Si hay empleados que cumplan esta condición, aumentar su salario un 7%
SET search_path to bd2026p

SELECT nombre, apellido, salario, cant_hijos
--Utilizo mis tablas
FROM empleados_tp21jose

--Filtro a los que cumplan la condicion
WHERE cant_hijos * 15000 > salario * 0.5

--Ordena los nombre alfabeticamente
ORDER BY nombre

--Esto modifica los datos si la segunda condicion se cumple!
UPDATE empleados_tp21jose
SET salario = salario * 1.07
WHERE cant_hijos * 15000 > salario * 0.5