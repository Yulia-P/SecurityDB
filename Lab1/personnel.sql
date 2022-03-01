
create database PERSONNEL;

--drop database PERSONNEL;
--drop table departments;
--drop table posts;
--drop table specialty;
--drop table personal_inf;
--drop table official_inf;

create table departments( --отделы
 idDep int not null identity(1,1) constraint idDep_pk primary key,  --идентификатор отдела
 department varchar(50), --название отдела
 leader varchar(50), -- начальник
 phoneNum varchar(20)); --номер телефона

create table posts( --должности
 idPost int not null identity(1,1) constraint idPost_pk primary key, --идентификатор должности
 post varchar(50)); --название должности

create table specialty( --специальности
 idSpec int not null identity(1,1) constraint idSpec_pk primary key, --идентификатор специальности
 specialty varchar(50)); --специальность

create table personal_inf( --личная информация
 personalNum int constraint personalNum_pk primary key, --индивидуальный номер
 dateBirth date, -- дата рождения
 placeBirth varchar(25), --место рождения
 passport varchar(30), --паспорт
 address varchar(50), --адрес проживания
 regAddress varchar(50), --адрес регистрации
 maritalStat varchar(20), --семейное положение
 children int); --дети

 create table official_inf( --служебная информация
 idEmployee int constraint idEmployee_pk primary key, --номер сотрудника
 personalNum int constraint personalNum_FK foreign key references personal_inf(personalNum), --индивидуальный номер 
 surname varchar(50), -- фамилия
 name varchar(50), --имя
 patronymic varchar(50), --отчиство
 idDep int constraint idDep_ofInf_FK foreign key references departments(idDep), --код отдел
 idPost int constraint idPost_ofInf_FK foreign key references posts(idPost), --код должности
 education varchar(50), --образование
 idSpec int constraint idSpec_ofInf_FK foreign key references specialty(idSpec), --код специальности
 experience varchar(50), --стаж
 phoneNum varchar(20), --номер телефона
 wage int);  --зарплата