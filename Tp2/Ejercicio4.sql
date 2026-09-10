set search_path to bd2026p

--Agrego la nueva columna
ALTER TABLE empleados_tp21jose
ADD COLUMN zona char(3) CONSTRAINT ck_zona CHECK(zona = 'SUR' or zona = 'NOR')

--Veo si se agrego la nueva columna 
SELECT *
FROM empleados_tp21jose