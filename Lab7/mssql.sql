--1.	������� Report
create table Report (
id INTEGER primary key identity(1,1),
xml_column XML
);

select * from Report

-- 2.	��������� XML
create procedure gXML
as
declare @gen XML
set @gen = (select	department [�����], 
					passport [�������], 
					GETDATE() [����]
	from official_inf oinf
					join departments dep on oinf.idDep = dep.idDep
					join personal_inf pinf on pinf.personalNum = oinf.personalNum
	FOR XML AUTO);
	SELECT @gen
go

execute gXML;

-- 3.	������� XML � ������� 
create procedure InsReport
as
DECLARE  @ins XML  
SET @ins = (select	department [�����], 
					passport [�������], 
					GETDATE() [����]
	from official_inf oinf
					join departments dep on oinf.idDep = dep.idDep
					join personal_inf pinf on pinf.personalNum = oinf.personalNum
for xml raw);
insert into Report values(@ins);
go
  
  execute InsReport
  select * from Report;

--4.	������ ��� XML-�������� 
create primary xml index IndexOnRep on Report(xml_column)

create xml index xmlIndexS on Report(xml_column) using xml index  IndexOnRep for path

--5.	���������� 
create procedure SelectRep
as
select xml_column.query('/row')
	as[xml_column]
	from Report
	for xml auto, type;
go
execute SelectRep



--drop procedure SelectRep;
--drop procedure InsReport;
--drop procedure gXML;
--drop table Report
