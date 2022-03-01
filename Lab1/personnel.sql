
create database PERSONNEL;

--drop database PERSONNEL;
--drop table departments;
--drop table posts;
--drop table specialty;
--drop table personal_inf;
--drop table official_inf;

create table departments( --������
 idDep int not null identity(1,1) constraint idDep_pk primary key,  --������������� ������
 department varchar(50), --�������� ������
 leader varchar(50), -- ���������
 phoneNum varchar(20)); --����� ��������

create table posts( --���������
 idPost int not null identity(1,1) constraint idPost_pk primary key, --������������� ���������
 post varchar(50)); --�������� ���������

create table specialty( --�������������
 idSpec int not null identity(1,1) constraint idSpec_pk primary key, --������������� �������������
 specialty varchar(50)); --�������������

create table personal_inf( --������ ����������
 personalNum int constraint personalNum_pk primary key, --�������������� �����
 dateBirth date, -- ���� ��������
 placeBirth varchar(25), --����� ��������
 passport varchar(30), --�������
 address varchar(50), --����� ����������
 regAddress varchar(50), --����� �����������
 maritalStat varchar(20), --�������� ���������
 children int); --����

 create table official_inf( --��������� ����������
 idEmployee int constraint idEmployee_pk primary key, --����� ����������
 personalNum int constraint personalNum_FK foreign key references personal_inf(personalNum), --�������������� ����� 
 surname varchar(50), -- �������
 name varchar(50), --���
 patronymic varchar(50), --��������
 idDep int constraint idDep_ofInf_FK foreign key references departments(idDep), --��� �����
 idPost int constraint idPost_ofInf_FK foreign key references posts(idPost), --��� ���������
 education varchar(50), --�����������
 idSpec int constraint idSpec_ofInf_FK foreign key references specialty(idSpec), --��� �������������
 experience varchar(50), --����
 phoneNum varchar(20), --����� ��������
 wage int);  --��������