/*
create proc spInsertUser
@firstName Nvarchar(50),
@lastName Nvarchar(50),
@Email Nvarchar(50),
@Password Nvarchar(50)
as
Insert into usuarios(First_Name, Last_Name,email,password) values(@FirstName,@lastName,@Email,@Password);
*/
/*
create proc spInsertAlumn
@firstName Nvarchar(50),
@lastName Nvarchar(50),
@birthdate datetime,
@DNI int,
@Email Nvarchar(50),
@telephone Nvarchar(50),
@internal_id Nvarchar(50)
as
Insert into alumnos(First_Name, Last_Name,DNI,email,telephone,internal_id) values(@firstName,@lastName,@DNI,@email,@telephone, @internal_id)
*/
/*
create Proc spchecklogin
@email Nvarchar (50),
@password Nvarchar(50)
as
SELECT COUNT(*) FROM usuarios WHERE email = @email AND password = @password
*/

/*ALTER proc [dbo].[spInsertAlumn]
@firstName Nvarchar(50),
@lastName Nvarchar(50),
@DNI int,
@Email Nvarchar(50),
@telephone Nvarchar(50),
@internal_id int
as
Insert into alumnos(First_Name, Last_Name,birthdate,DNI,email,telephone,internal_id) values(@firstName,@lastName,NULL,@DNI,@email,@telephone, @internal_id)
*/
/*
create proc spSearchAlumn
@internal_id int
as
select * from alumnos where internal_id=@internal_id
*/