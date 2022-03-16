---------�������������---------
create view DEPARTMENT as select department, leader from departments;

create view POST as select idPost, post from posts;

create view SPEC as select idSpec, specialty from specialty;

create view PINF as select personalNum, dateBirth, address, maritalStat, children from personal_inf;

create view OINF as select idEmployee, surname, name, patronymic, idDep, idPost, idSpec, experience, wage,  date_employment, date_dismissal from official_inf;

create view EMPLOYEE as select idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status from official_inf where status = '��������'; 

drop view EMPLOYEE;

select * from DEPARTMENT;
select * from POST;
select * from SPEC;
select * from PINF;
select * from OINF;
select * from EMPLOYEE;

---------�������---------
exec sp_helpindex 'departments'
exec sp_helpindex 'posts'
exec sp_helpindex 'specialty'
exec sp_helpindex 'personal_inf'
exec sp_helpindex 'official_inf'

select * from official_inf;
CREATE index IX_OINF on official_inf(idEmployee, idDep, idPost, wage)
select * from official_inf order by idEmployee, wage

---------���������---------
---------������� official_inf-------------
--------AddOfficial_inf--------
--drop PROCEDURE AddOfficial_inf
CREATE OR ALTER PROCEDURE AddOfficial_inf --���������� ��������� ����������
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
	@status varchar(20)
AS
BEGIN
INSERT INTO official_inf(idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage,status) 
VALUES(@idEmployee, @personalNum, @surname, @name, @patronymic, @idDep, @idPost, @education, @idSpec, @experience, @phoneNum, @wage, @status)
END;
--
exec AddOfficial_inf 17975680, 1, '���������', '������', '����������', 4, 2, '������', 1, '7 ���', '80(33)343-1746', 3500, '��������'
select * from official_inf;

--------DeleteOINF--------
--drop PROCEDURE DeleteOINF;
CREATE OR ALTER PROCEDURE DeleteOINF
       @idEmployee int
AS
BEGIN
	DELETE official_inf where official_inf.idEmployee =  @idEmployee;
END;

select * from official_inf;

--------UpdateOINF--------
drop procedure UpdateOINF;
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
	@status varchar(20)
AS
BEGIN
  UPDATE official_inf
  SET idEmployee=@idEmployee, personalNum=@personalNum, surname=@surname, name=@name, patronymic=@patronymic, idDep=@idDep, idPost=@idPost, education=@education, idSpec=@idSpec, experience=@experience, phoneNum=@phoneNum, wage=@wage,  status=@status
     WHERE official_inf.idEmployee=@idEmployee
END;

exec UpdateOINF @idEmployee='19592652', @personalNum='6', @surname='������', @name='�����', @patronymic='���������', @idDep=2, @idPost=5, @education='������-�����������', @idSpec=5, @experience='7 ���', @phoneNum='80(33)434-56-12', @wage=1000, @status='�� ��������'

select * from official_inf;
---------������� ���������� � �����������
CREATE OR ALTER PROCEDURE GetOffInf as
begin 
select * from official_inf;
end;

exec GetOffInf;

 --------AddPersonal_inf--------
--drop PROCEDURE AddPersonal_inf ;
CREATE OR ALTER PROCEDURE AddPersonal_inf -- ���������� ������ ����������
   @personalNum int,   
   @placeBirth varchar(25),
   @passport varchar(30),
   @address varchar(50),
   @regAddress varchar(50),
   @maritalStat varchar(20),
   @children int,
   @dateBirth varchar(25)
AS
BEGIN
INSERT INTO personal_inf(personalNum,placeBirth, passport, address, regAddress, maritalStat,children,  dateBirth) 
VALUES(@personalNum,  @placeBirth, @passport, @address, @regAddress, @maritalStat, @children, @dateBirth)
END;
--
exec AddPersonal_inf 12, '�. �����', '1078436706', '�. �����, ��. �������� �. 48, ��. 22', '�. �����, ��. �������� �. 48, ��. 22', '�� �������', 0, '6556789'

select * from personal_inf;

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

--------UpdatePINF--------
drop PROCEDURE UpdatePINF
CREATE OR ALTER PROCEDURE UpdatePINF
           @personalNum int,
		   @placeBirth varchar(25),
		   @passport varchar(30),
		   @address varchar(50),
		   @regAddress varchar(50),
		   @maritalStat varchar(20),
		   @children int,
		   @dateBirth varchar(50)
AS
BEGIN
  UPDATE personal_inf 
  SET personalNum=@personalNum, placeBirth=@placeBirth, passport=@passport, address=@address, regAddress=@regAddress, maritalStat=@maritalStat, children=@children,  dateBirth=@dateBirth
   WHERE personal_inf.personalNum = @personalNum
END;

select * from personal_inf;
exec UpdatePINF @personalNum=1,  @placeBirth='�. ��������', @passport='7876554834', @address='�. �����, ��. ������������, �. 12, ��. 13', @regAddress='�. �����, ��. ������� �.5�, ��. 22', @maritalStat='�����', @children=3, @dateBirth='19.09.1998'
select * from personal_inf;
--������ ���������� � �����������
CREATE OR ALTER PROCEDURE GetPersInf as
begin 
select * from personal_inf;
end;

exec GetPersInf;
--------ProcEmployee--------
--drop procedure ProcEmployee; 
CREATE OR ALTER PROCEDURE ProcEmployee AS --���������� ����������
BEGIN 
	SELECT * FROM EMPLOYEE
		END;
--
exec ProcEmployee;

----------
--------GetEmployee--------
CREATE OR ALTER PROCEDURE GetEmployee AS -- ��� ���������� � �����������
BEGIN 
	SELECT * FROM personal_inf INNER JOIN official_inf  
	     ON personal_inf.personalNum = official_inf.personalNum
		END;
--
exec GetEmployee;

--------GetEmployeeById--------
CREATE OR ALTER PROCEDURE GetEmployeeById -- ����� ���������� � ���������� ����������
	@personalNum int
AS
BEGIN 
	SELECT * FROM personal_inf INNER JOIN official_inf  
	     ON personal_inf.personalNum = official_inf.personalNum where personal_inf.personalNum = @personalNum
END;
--
exec GetEmployeeById @personalNum=11;
 
 ---------�������---------
create function avg_wage( -- ������� �������� � ������
    @idDep int) 
	returns real as begin declare @avgw real = 0;
	set @avgw = (select avg(wage) from official_inf where idDep=@idDep);
	return @avgw;
	end;

select dbo.avg_wage(3) [������� �������� ������]

---------��������---------
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

