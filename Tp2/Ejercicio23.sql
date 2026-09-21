--Cuenta el número de empleados que tienen el mismo número de hijos.
--Deberás mostrar también el número de hijos que corresponde en cada caso
SET search_path to bd2026p

--Cuento las filas
SELECT cant_hijos, COUNT(*) AS numero_de_hijos

--Utilizo mi tabla
FROM empleados_tp21jose

--Lo agrupo por la cantidad de hijos
GROUP BY cant_hijos

--Los ordenos con el numero de hijos
ORDER BY numero_de_hijos
