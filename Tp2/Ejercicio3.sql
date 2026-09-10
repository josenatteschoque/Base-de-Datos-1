set search_path to bd2026p

--Cambio los campos de nombre y apellido
ALTER TABLE empleados_tp21jose
ALTER COLUMN nombre TYPE varchar(25),
ALTER COLUMN apellido TYPE varchar(30);

--Veo si pude modificar los campos
SELECT *
FROM empleados_tp21jose