---------ПРЕДСТАВЛЕНИЕ---------
create view DEPARTMENT as select department, leader from departments;

create view POST as select idPost, post from posts;

create view SPEC as select idSpec, specialty from specialty;

create view PINF as select personalNum, dateBirth, address, maritalStat, children from personal_inf;

create view OINF as select idEmployee, surname, name, patronymic, idDep, idPost, idSpec, experience, wage from official_inf;

--select * from DEPARTMENT;
--select * from POST;
--select * from SPEC;
--select * from PINF;
--select * from OINF;

---------ИНДЕКСЫ---------
exec sp_helpindex 'departments'
exec sp_helpindex 'posts'
exec sp_helpindex 'specialty'
exec sp_helpindex 'personal_inf'
exec sp_helpindex 'official_inf'

select * from official_inf;
CREATE index IX_OINF on official_inf(idEmployee, idDep, idPost, wage)
select * from official_inf order by idEmployee, wage

---------ПРОЦЕДУРЫ---------
CREATE OR ALTER PROCEDURE GetEmployee AS -- вся информация о сторудниках
BEGIN 
	SELECT * FROM personal_inf INNER JOIN official_inf  
	     ON personal_inf.personalNum = official_inf.personalNum
		END;
exec GetEmployee;

CREATE OR ALTER PROCEDURE GetEmployeeById--Поиск информации о конкретном сотруднике
	@personalNum int
AS
BEGIN 
	SELECT * FROM personal_inf INNER JOIN official_inf  
	     ON personal_inf.personalNum = official_inf.personalNum where personal_inf.personalNum = @personalNum
END;
exec GetEmployeeById @personalNum=9;
 
CREATE OR ALTER PROCEDURE AddPersonal_inf
   @personalNum int,
   @dateBirth date,
   @placeBirth varchar(25),
   @passport varchar(30),
   @address varchar(50),
   @regAddress varchar(50),
   @maritalStat varchar(20),
   @children int
AS
BEGIN
INSERT INTO personal_inf(personalNum, dateBirth, placeBirth, passport, address, regAddress, maritalStat,children) 
VALUES(@personalNum, @dateBirth, @placeBirth, @passport, @address, @regAddress, @maritalStat, @children)
END;

exec AddPersonal_inf 11, '31/01/1981', 'г. Минск', '1078436706', 'г. Минск, ул. Гурского д. 48, кв. 22', 'г. Минск, ул. Гурского д. 48, кв. 22', 'Не замужем', 0

GO
CREATE OR ALTER PROCEDURE AddOfficial_inf
    @idEmployee int,
    @personalNum int,
    @surname varchar(50),
	@name varchar(50),
	@patronymic varchar(50),
	@idDep int,
	@idPost int,
	@education varchar(50),
	@idSpec int,
	@experience varchar(50),
	@phoneNum varchar(20),
	@wage int
AS
BEGIN
INSERT INTO official_inf(idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage) 
VALUES(@idEmployee, @personalNum, @surname, @name, @patronymic, @idDep, @idPost, @education, @idSpec, @experience, @phoneNum, @wage)
END;

