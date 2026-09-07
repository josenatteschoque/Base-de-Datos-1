set search_path to bd2026;

--Sentencia DDL para crear tabla
CREATE TABLE ej8b_Profesores_Jose
(dni integer primary key
, nombre varchar(40) not null
, direccion varchar(40) not null
, telefono integer not null)

--Sentencia DDL para crear tabla
CREATE TABLE ej8b_Modulo_Jose
(codigo integer primary key
, nombre varchar(40) not null
, dni_Profesor integer not null
, foreign key (dni_Profesor) references ej8b_Profesores_Jose)

--Sentencia DDL para crear tabla
CREATE TABLE ej8b_Alumnos_Jose
(n_expediente integer primary key
, nombre varchar(40) not null
, apellidos varchar(40) not null
, fecha_Nacimiento varchar(40) not null
, telefono integer not null
, direccionElectronica varchar(40) not null
, n_Expediente_Delegado integer not null
, foreign key (n_Expediente_Delegado) references ej8b_Alumnos_Jose)


--Sentencia DDL para crear tabla
CREATE TABLE ej8b_Matriculas_Jose
(codigo_Modulo integer not null
, n_Expediente_Alumno integer not null
, fecha_Inscripcion varchar(40) not null
, foreign key (n_Expediente_Alumno) references ej8b_Alumnos_Jose
, foreign key (codigo_Modulo) references ej8b_Modulo_Jose )


--Esto me permite cargar en las tablas
INSERT into ej8b_Profesores_Jose
(dni, nombre, direccion, telefono)
VALUES 
(94587167, 'Jose Nattes', 'san martin', 512232)