--Insertar datos en tabla Empleados: los empleados con nro_emp 1 y 2 serán los jefes
--con lo cual el campo nro_emp será igual al campo jefe.
--Generar al menos 10 empleados en un archivo (csv, txt…) e importarlos.
set search_path to bd2026p

--Cargo los empleados
INSERT INTO empleados_tp21jose(nro_emp, jefe, salario, depto)
VALUES (1,1,100000,10)

INSERT INTO empleados_tp21jose(nro_emp, jefe, salario)
VALUES (2,2, 200000)

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(3, 'Maria', 'Rodriguez', 1122334123, 'F', 2, '1931-11-05', '2000-01-04', 200000, 21, 3, 10, 'NOR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(4, 'Jose', 'Nattes', 9458716701, 'M', 1, '2006-01-04', '2026-09-18', 200000, 0, 1, 20, 'SUR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(5, 'Leo', 'Aguilar', 1111111111, 'M', 4, '2006-05-12', '2026-09-18', 180000, 1, 2, 20, 'SUR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(6, 'Wilder', 'Champi', 2222222222, 'M', 4, '2006-10-13', '2026-09-18', 100000, 0, 1, 20, 'SUR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(7, 'Evelin', 'Orellena', 3333333333, 'F', 4, '2006-01-18', '2026-09-10', 200000, 0, 1, 20, 'NOR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(8, 'Rodrigo', 'Rene', 4444444444, 'M', 1, '1990-05-17', '2020-09-18', 200000, 0, 2, 30, 'SUR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(9, 'Carla', 'Nattes', 5555555555, 'F', 2, '2005-03-09', '2024-12-01', 200000, 0, 1, 10, 'NOR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(10, 'Luis', 'Nattes', 6666666666, 'M', 3, '2000-07-09', '2026-09-18', 200000, 1, 2, 40, 'SUR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(11, 'Alexis', 'Mamani', 7777777777, 'M', 8, '2005-07-09', '2026-09-18', 200000, 1, 2, 50, 'NOR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(12, 'Sebastian', 'Pratesi', 8888888888, 'M', 6, '1999-07-09', '2026-09-18', 200000, 1, 2, 50, 'SUR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(13, 'Sandro', 'Claro', 999999999, 'M', 11, '2006-07-09', '2026-09-18', 200000, 20000, 2, 50, 'SUR')

INSERT INTO empleados_tp21jose(nro_emp, nombre, apellido, dni, sexo, jefe, fecha_nac, fecha_alta, salario, premio, cant_hijos, depto, zona) 
VALUES(14, 'Lucia', 'Rivero', 1010101010, 'F', 8, '2003-07-09', '2025-09-18', 200000, 50000, 2, 20, 'SUR')

--Veo si pude cargar los empleados
SELECT *
FROM empleados_tp21jose