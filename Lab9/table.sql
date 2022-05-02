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

create table ranks( --ранг сотрудника
 idRank int constraint idRank_pk primary key, --идентификатор
 ranks varchar(50)); --ранг

create table departments( --отделы
 idDep int not null identity(1,1) constraint idDep_pk primary key,  --идентификатор отдела
 department varchar(50), --название отдела
 phoneNum varchar(20)); --номер телефона

create table posts( --должности
 idPost int not null identity(1,1) constraint idPost_pk primary key, --идентификатор должности
 post varchar(50)); --название должности

create table specialty( --специальности
 idSpec int not null identity(1,1) constraint idSpec_pk primary key, --идентификатор специальности
 specialty varchar(50), --специальность
 education varchar(50) );  --образование
 
create table personal_inf( --личная информация
 personalNum int constraint personalNum_pk primary key, --индивидуальный номер
 placeBirth varchar(25), --место рождения
 passport varchar(30), --паспорт
 address varchar(50), --адрес проживания
 maritalStat varchar(20), --семейное положение
 children int, --дети
 dateBirth date, -- дата рождения
 phoneNum varchar(20)); --номер телефона  
 
create table official_inf( --служебная информация
 idEmployee int constraint idEmployee_pk primary key, --номер сотрудника
 personalNum int constraint personalNum_FK foreign key references personal_inf(personalNum), --индивидуальный номер 
 surname varchar(50), -- фамилия
 name varchar(50), --имя
 patronymic varchar(50), --отчиство
 idDep int constraint idDep_ofInf_FK foreign key references departments(idDep), --код отдел
 idPost int constraint idPost_ofInf_FK foreign key references posts(idPost), --код должности 
 idSpec int constraint idSpec_ofInf_FK foreign key references specialty(idSpec), --код специальности
 idRank int constraint rank_ofInf_FK foreign key references ranks(idRank), --ранг сотрудника
 experience varchar(50), --стаж
 status  varchar(20)); --статус сотрудника

create table salary_cal_year(
 id int constraint id_pk primary key,
 idEmployee int constraint idEmp_Sal_FK foreign key references official_inf(idEmployee), --сотрудник
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
 --idEmployee int constraint idEmp_Sal_FK foreign key references official_inf(idEmployee), --сотрудник
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
  idEmployee int constraint idEmp_Hol_FK foreign key references official_inf(idEmployee), --сотрудник
  MainLabor int, -- основной трудовой отпуск
  AdditionalLabor int, --дополнительный трудовой отпуск
  ByPregnancy int, --социальный по беременности
  childcare int, --социальный по уходу за детьми
  GettingEducation int, -- социальный в связи с получением образования;
  Personal_Family int); --социальный по уважительным причинам личного и семейного характера
