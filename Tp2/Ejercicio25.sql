--Ver que muestra:
--SELECT nombre, apellido, fecha_alta, fecha_nac, (fecha_altafecha_nac)/365, age(fecha_alta,fecha_nac), (current_datefecha_nac)/365, age(current_date,fecha_nac)
--From Empleados
SET search_path to bd2026p

SET SCHEMA 'bd2026p'

SELECT nombre, apellido, fecha_alta, fecha_nac, 
(fecha_alta - fecha_nac)/365 fecha1, 
--AGE() devuelve un intervalo de una resta de fecha
age(fecha_alta,fecha_nac) fecha2, 
--CURRENT_DATE solo te da la fecha actual dia, mes y año
(current_date-fecha_nac)/365 fecha3, 
age(current_date,fecha_nac) fecha4,
--Uso el age() con solo un argumento y hace la resta con la fecha actual
age(fecha_nac) fecha5

--Sigo utilizando la tabla del profe
From Empleados_ng

----Ejemplos----
--Con esto obtengo el dia de la semana de una fecha
SELECT EXTRACT(dow FROM TIMESTAMP'2006-01-04') fecha6

--Con esto obtengo el mes de una fecha
SELECT EXTRACT(month FROM TIMESTAMP'2006-01-04') fecha7

--now() Devuelve la fecha actual
SELECT now()

--Esto me devuelve la fecha actual en formato AA/MM/DD
SELECT CURRENT_DATE