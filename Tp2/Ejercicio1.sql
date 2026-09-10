set search_path to bd2026p

--Creo la tabla Departamentos
CREATE TABLE Departamentos_Tp21Jose(
--nro_Depto debe estar entre 10 y 90
nro_Depto smallint PRIMARY KEY CHECK (nro_Depto BETWEEN 10 AND 90)
--El valor ingresado debe de ser igual a su version en mayuscula
--UPPER() Convierte un texto en mayusculas
, nombre_Depto varchar(15) NOT NULL CHECK (nombre_Depto = UPPER(nombre_Depto)))

--Creo la tabla Empleados
CREATE TABLE Empleados_Tp21Jose(
nro_emp smallint CONSTRAINT pk_empJ PRIMARY KEY
, nombre varchar(20)
, apellido varchar(20)
, dni varchar(10)
--Tiene una regla que tiene que ser si o si mayuscula
, sexo char(1) 
	CONSTRAINT mayuscula CHECK(sexo = UPPER(sexo))
, jefe smallint 
	CONSTRAINT notnulo NOT NULL
	CONSTRAINT fk_jefe REFERENCES Empleados_Tp21Jose(nro_emp)
, fecha_nac date 
	CONSTRAINT mayorFecha CHECK(fecha_nac > '1930-01-01')
	--si no asigna un valor le pone la fecha actual
, fecha_alta date DEFAULT CURRENT_DATE
	CONSTRAINT mayor18anios CHECK(fecha_alta > fecha_nac + INTERVAL '18 years')
,salario decimal(10,2) 
	CONSTRAINT notnulo NOT NULL 
	CONSTRAINT mayor CHECK(salario > 60000)
, premio int DEFAULT 0
, cant_hijos smallint 
, depto smallint 
	CONSTRAINT fk_depto  REFERENCES Departamentos_tp21Jose(nro_Depto)
, CONSTRAINT restriccion_adiccional CHECK(salario + premio < 260000)
)

--Los CONSTRAINT se usan para nombrar las restrincciones!!

--Creo la tabla Nivel_Salarial
CREATE TABLE nivel_Salarial_tp21jose(
nivel smallint CONSTRAINT pk_nivelJ PRIMARY KEY
, salario_min decimal(10,2) CONSTRAINT notnulo NOT NULL
, salario_max decimal(10,2) CONSTRAINT notnulo NOT NULL
)




