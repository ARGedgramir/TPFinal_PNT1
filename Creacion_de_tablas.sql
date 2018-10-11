/*
CREATE TABLE usuarios
(First_Name nvarchar(50),
Last_Name nvarchar(50),
email nvarchar(50) unique,
password nvarchar(50))
*/

/*
CREATE TABLE alumnos
(table_id integer  PRIMARY KEY,
First_Name nvarchar(50),
Last_Name nvarchar(50),
birthdate datetime,
DNI integer unique NOT NULL,
email nvarchar(50),
telephone nvarchar(20),
internal_id integer unique NOT NULL)
*/

/*
CREATE TABLE profesores
(table_id integer  PRIMARY KEY, -- entero y clave primaria
First_Name nvarchar(50),--Caracter hasta 50.
Last_Name nvarchar(50), --Caracter hasta 50.
birthdate datetime, --formato fecha
DNI integer unique NOT NULL, --entero, dato unico, no permite vacio
email char(50), --Caracter hasta 50.
telephone nvarchar(20), --Caracter hasta 20.
internal_id integer unique NOT NULL, --entero, dato unico, no permite vacio
antique integer) --entero
*/

/*
Como me olvide de setear los NULLS y las columnas unicas, tuve que hacer un alter table
ALTER TABLE usuarios ALTER COLUMN first_Name nvarchar(50) NOT NULL;
ALTER TABLE usuarios ALTER COLUMN last_Name nvarchar(50) NOT NULL;
ALTER TABLE usuarios ALTER COLUMN email nvarchar(50) NOT NULL ;
ALTER TABLE usuarios ADD UNIQUE	(email);
ALTER TABLE usuarios ALTER COLUMN password char(50) NOT NULL;
*/

/*
CREATE TABLE cursos
(table_id integer PRIMARY KEY,
date datetime NOT NULL,
time time not null,
maxallumn integer not null)

use instituto

 ALTER TABLE alumnos ADD UNIQUE	(DNI);
 ALTER TABLE alumnos ADD UNIQUE	(internal_id);
*/