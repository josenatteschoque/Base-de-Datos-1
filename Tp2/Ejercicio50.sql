SET search_path to bd2026p
/*50. Usando IN, ANY o ALL resolver:

a) Obtener los nombres y salarios de los empleados cuyo salario
coincide con el premio multiplicado por 4 de algún otro o la suya
propia.*/
SELECT e.nombre, e.apellido, e.salario
--Utilizo la tabla de profe
FROM empleados_ng e
--Compara todos los resultados hasta que uno se cumpla
WHERE e.salario = ANY(SELECT e1.premio *4
					  FROM empleados_ng e1)
/*
b) Obtener por orden alfabético los nombres y salarios de los empleados
cuyo salario es superior doble de los premios existentes.*/
SELECT e.nombre, e.apellido, e.salario
FROM empleados_ng e
WHERE e.salario > ALL(SELECT e1.premio *2
					FROM empleados_ng e1)
ORDER BY e.nombre

/*
c) Obtener por orden alfabético los nombres y salarios de los empleados
cuyo salario es inferior a tres veces del premio mas bajo existente(no
considerar los premios iguales a cero).
d) Obtener por orden alfabético los nombres de los empleados que
trabajan en el mismo departamento que María o José.
*/

select nombre, apellido, salario, premio
from empleados_ng