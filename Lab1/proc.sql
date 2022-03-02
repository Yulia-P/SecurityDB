---------ПРЕДСТАВЛЕНИЕ---------
create view DEPARTMENT as select department, leader from departments;

create view POST as select idPost, post from posts;

create view SPEC as select idSpec, specialty from specialty;

create view PINF as select personalNum, dateBirth, address, maritalStat, children from personal_inf;

create view OINF as select idEmployee, surname, name, patronymic, idDep, idPost, idSpec, experience, wage,  date_employment, date_dismissal from official_inf;

create view EMPLOYEE as select idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, date_employment, date_dismissal from official_inf where date_dismissal is NULL; 

select * from DEPARTMENT;
select * from POST;
select * from SPEC;
select * from PINF;
select * from OINF;
select * from EMPLOYEE;

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
--------ProcEmployee--------
CREATE OR ALTER PROCEDURE ProcEmployee AS -- вся информация о сторудниках
BEGIN 
	SELECT * FROM EMPLOYEE
		END;
--
exec ProcEmployee;

--------GetEmployee--------
CREATE OR ALTER PROCEDURE GetEmployee AS -- вся информация о сторудниках
BEGIN 
	SELECT * FROM personal_inf INNER JOIN official_inf  
	     ON personal_inf.personalNum = official_inf.personalNum
		END;
--
exec GetEmployee;

--------GetEmployeeById--------
CREATE OR ALTER PROCEDURE GetEmployeeById -- поиск информации о конкретном сотруднике
	@personalNum int
AS
BEGIN 
	SELECT * FROM personal_inf INNER JOIN official_inf  
	     ON personal_inf.personalNum = official_inf.personalNum where personal_inf.personalNum = @personalNum
END;
--
exec GetEmployeeById @personalNum=11;
 
 --------AddPersonal_inf--------
CREATE OR ALTER PROCEDURE AddPersonal_inf -- добавление личной информации
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
--
exec AddPersonal_inf 12, '1981-01-31', 'г. Минск', '1078436706', 'г. Минск, ул. Гурского д. 48, кв. 22', 'г. Минск, ул. Гурского д. 48, кв. 22', 'Не замужем', 0

--------AddOfficial_inf--------
CREATE OR ALTER PROCEDURE AddOfficial_inf --добавление служебной информации
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
	@wage int,
	@date_employment date, 
	@date_dismissal date
AS
BEGIN
INSERT INTO official_inf(idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, date_employment, date_dismissal) 
VALUES(@idEmployee, @personalNum, @surname, @name, @patronymic, @idDep, @idPost, @education, @idSpec, @experience, @phoneNum, @wage, @date_employment, @date_dismissal)
END;
--
exec AddOfficial_inf 17975680, 12, 'Карманова', 'Любовь', 'Викторовна', 4, 2, 'высшее', 1, '7 лет', '80(33)343-1746', 3500, '2015-09-01', NULL
select * from official_inf;

--------UpdatePINF--------
CREATE OR ALTER PROCEDURE UpdatePINF
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
  UPDATE personal_inf 
  SET personalNum=@personalNum, dateBirth=@dateBirth, placeBirth=@placeBirth, passport=@passport, address=@address, regAddress=@regAddress, maritalStat=@maritalStat, children=@children
   WHERE personal_inf.personalNum = @personalNum
END;

exec UpdatePINF @personalNum=1, @dateBirth='1991-09-13', @placeBirth='г. Сморгонь', @passport='г. Сморгонь ул. Ленина д. 13, кв. 24', @address='г. Минск, ул. Володарского, д. 12, кв. 13', @regAddress='г. Минск, ул. Кедышко д.5а, кв. 22', @maritalStat='Женат', @children=3

--------DeletePINF--------
CREATE OR ALTER PROCEDURE DeletePINF
       @personalNum int
AS
BEGIN
	DELETE personal_inf where personal_inf.personalNum =  @personalNum;
END;
----
exec DeletePINF 12
select * from personal_inf
--

--------UpdateOINF--------
CREATE OR ALTER PROCEDURE UpdateOINF
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
	@wage int,
	@date_employment date,
	@date_dismissal date
AS
BEGIN
  UPDATE official_inf
  SET idEmployee=@idEmployee, personalNum=@personalNum, surname=@surname, name=@name, patronymic=@patronymic, idDep=@idDep, idPost=@idPost, education=@education, idSpec=@idSpec, experience=@experience, phoneNum=@phoneNum, wage=@wage,  date_employment=@date_employment, date_dismissal=@date_dismissal
     WHERE official_inf.idEmployee=@idEmployee
END;

exec UpdateOINF @idEmployee='19592652', @personalNum='6', @surname='Петров', @name='Антон', @patronymic='Сергеевич', @idDep=2, @idPost=5, @education='средне-специальное', @idSpec=5, @experience='7 лет', @phoneNum='80(33)434-56-12', @wage=1000, @date_employment='2015-10-27', @date_dismissal=NULL

--------DeleteOINF--------
CREATE OR ALTER PROCEDURE DeleteOINF
       @personalNum int
AS
BEGIN
	DELETE official_inf where official_inf.personalNum =  @personalNum;
END;

select * from official_inf;

---------ФУНКЦИИ---------
create function avg_wage( -- средняя зарплата в отделе
    @idDep int) 
	returns real as begin declare @avgw real = 0;
	set @avgw = (select avg(wage) from official_inf where idDep=@idDep);
	return @avgw;
	end;

select dbo.avg_wage(3) [Средняя зарплата отдела]

---------ТРИГГЕРЫ---------
create trigger OINF_Trigger_up on official_inf after UPDATE 
       as print 'Trigger after update official_inf';
 return;  
go 
create trigger PINF_Trigger_up on personal_inf after UPDATE 
       as print 'Trigger after update personal_inf';
 return;  
go 

update official_inf SET wage = 5000 WHERE personalNum = 7;
update personal_inf SET children = 3 WHERE personalNum = 9;