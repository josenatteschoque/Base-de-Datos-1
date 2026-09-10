set search_path to bd2026p

--Cargo los empleados
INSERT INTO empleados_tp21jose(nro_emp, jefe, salario, depto)
VALUES (1,1,100000,10)

INSERT INTO empleados_tp21jose(nro_emp, jefe, salario)
VALUES (2,2, 200000)

--Veo si pude cargar los empleados
SELECT *
FROM empleados_tp21jose