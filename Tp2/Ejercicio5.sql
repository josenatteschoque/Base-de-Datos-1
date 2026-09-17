set search_path to bd2026p

--Cargo los empleados
INSERT INTO empleados_tp21jose(nro_emp, jefe, salario, depto)
VALUES (1,1,100000,10)

INSERT INTO empleados_tp21jose(nro_emp, jefe, salario)
VALUES (2,2, 200000)

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fech_nac, fehc_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(123,juan,gonzales,12343245555,m,m,1,30682,36586,10000,12,,1,10);

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fech_nac, fehc_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(321,maria,rodriguez,32441546275,f,f,2,22039,32631,2010,21,,3,11);

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fech_nac, fehc_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(654,andres,martinez,12345554333,m,m,2,36506,40240,1230,31,,1,20);

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fech_nac, fehc_alta, salario, premio, cant_hijos, depto, zona)
VALUES(456,lucrecia,shindler,98578585940,f,f,1,36626, 3/3/2025,3000,13,,4,30);



--Veo si pude cargar los empleados
SELECT *
FROM empleados_tp21jose