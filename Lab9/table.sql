create database PERSONNEL9;

--drop database PERSONNEL9;
--drop table Holidays;
--drop table salary_cal_year;
--drop table official_inf;
--drop table personal_inf;
--drop table departments;
--drop table ranks;
--drop table posts;
--drop table specialty;

  select * from departments;
  select * from posts;
  select * from specialty;

create table ranks( --���� ����������
 idRank int constraint idRank_pk primary key, --�������������
 ranks varchar(50)); --����

create table departments( --������
 idDep int not null identity(1,1) constraint idDep_pk primary key,  --������������� ������
 department varchar(50), --�������� ������
 phoneNum varchar(20)); --����� ��������

create table posts( --���������
 idPost int not null identity(1,1) constraint idPost_pk primary key, --������������� ���������
 post varchar(50)); --�������� ���������

create table specialty( --�������������
 idSpec int not null identity(1,1) constraint idSpec_pk primary key, --������������� �������������
 specialty varchar(50), --�������������
 education varchar(50) );  --�����������
 
create table personal_inf( --������ ����������
 personalNum int constraint personalNum_pk primary key, --�������������� �����
 placeBirth varchar(25), --����� ��������
 passport varchar(30), --�������
 address varchar(50), --����� ����������
 maritalStat varchar(20), --�������� ���������
 children int, --����
 dateBirth date, -- ���� ��������
 phoneNum varchar(20)); --����� ��������  
 
create table official_inf( --��������� ����������
 idEmployee int constraint idEmployee_pk primary key, --����� ����������
 personalNum int constraint personalNum_FK foreign key references personal_inf(personalNum), --�������������� ����� 
 surname varchar(50), -- �������
 name varchar(50), --���
 patronymic varchar(50), --��������
 idDep int constraint idDep_ofInf_FK foreign key references departments(idDep), --��� �����
 idPost int constraint idPost_ofInf_FK foreign key references posts(idPost), --��� ��������� 
 idSpec int constraint idSpec_ofInf_FK foreign key references specialty(idSpec), --��� �������������
 idRank int constraint rank_ofInf_FK foreign key references ranks(idRank), --���� ����������
 experience varchar(50), --����
 status  varchar(20)); --������ ����������

create table salary_cal_year(
 id int constraint id_pk primary key,
 idEmployee int constraint idEmp_Sal_FK foreign key references official_inf(idEmployee), --���������
 idDep int constraint idDep_Sal_FK foreign key references departments(idDep),
 salApr2022 money,
 salMar2022 money,
 salFeb2022 money,
 salJan2022 money, 
 salDec2021 money,
 salNov2021 money,
 salOct2021 money,
 salSept2021 money,
 salAug2021 money,
 salJuly2021 money,
 salJune2021 money,
 salMay2021 money
 );

 --create table salary_cal_year(
 --id int constraint id_pk primary key,
 --idEmployee int constraint idEmp_Sal_FK foreign key references official_inf(idEmployee), --���������
 --salApr2022 money,
 --salMar2022 money,
 --salFeb2022 money,
 --salJan2022 money, 
 --salDec2021 money,
 --salNov2021 money,
 --salOct2021 money,
 --salSept2021 money,
 --salAug2021 money,
 --salJuly2021 money,
 --salJune2021 money,
 --salMay2021 money
 --);
 
 create table Holidays(
  id int constraint id_Hol_pk primary key,
  idEmployee int constraint idEmp_Hol_FK foreign key references official_inf(idEmployee), --���������
  MainLabor int, -- �������� �������� ������
  AdditionalLabor int, --�������������� �������� ������
  ByPregnancy int, --���������� �� ������������
  childcare int, --���������� �� ����� �� ������
  GettingEducation int, -- ���������� � ����� � ���������� �����������;
  Personal_Family int); --���������� �� ������������ �������� ������� � ��������� ���������
