create database PERSONNEL4;

drop table official_inf;
drop table personal_inf;

create table departments( --������
 idDep int not null identity(1,1) constraint idDep_pk primary key,  --������������� ������
 department varchar(50), --�������� ������
 leader varchar(50), -- ���������
 phoneNum varchar(20),
 locationDep int not null,
 foreign key (locationDep) references gadm36_blr_2(ogr_fid)); --����� ��������

create table posts( --���������
 idPost int not null identity(1,1) constraint idPost_pk primary key, --������������� ���������
 post varchar(50)); --�������� ���������

create table specialty( --�������������
 idSpec int not null identity(1,1) constraint idSpec_pk primary key, --������������� �������������
 specialty varchar(50)); --�������������

create table personal_inf( --������ ����������
 personalNum int constraint personalNum_pk primary key, --�������������� �����
 placeBirth varchar(25), --����� ��������
 passport varchar(30), --�������
 address varchar(50), --����� ����������
 regAddress varchar(50), --����� �����������
 maritalStat varchar(20), --�������� ���������
 children int, --����
 dateBirth varchar(50));  -- ���� ��������


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
 wage int,  --��������
 status  varchar(20),
 EmployeeAddress int not null,
 foreign key (EmployeeAddress) references gadm36_blr_2(ogr_fid)); --������ ����������

  select * from departments;
  select * from posts;
  select * from specialty;
  select * from personal_inf;
  select * from official_inf;
  select * from gadm36_blr_2;

---------DEPARTMENTS---------
insert into departments (department, leader, phoneNum, locationDep) 
  values ('������������ �����', '������ ����� ��������', '327-09-07', 3);
insert into departments (department, leader, phoneNum, locationDep) 
  values ('����� ���������� � ���������', '�������� ���� ��������', '445-76-05', 5);
insert into departments (department, leader, phoneNum, locationDep) 
  values ('����� ����������� ��������', '��������� ����� ����������', '875-01-34', 17);
insert into departments (department, leader, phoneNum, locationDep) 
  values ('����� ����������', '������ ��������� �����������', '121-07-32', 9);
  UPDATE departments SET locationDep=86 WHERE department='����� ����������';
---------POSTS---------
insert into posts (post) values ('����������� ������������ ���������');
insert into posts (post) values ('��������');
insert into posts (post) values ('���������');
insert into posts (post) values ('�������');
insert into posts (post) values ('��������');
insert into posts (post) values ('������� ���������');
insert into posts (post) values ('������');
insert into posts (post) values ('���������� �� ����������');
insert into posts (post) values ('���������');

---------SPECIALTY---------
insert into  specialty (specialty) values ('����������');
insert into  specialty (specialty) values ('�������');
insert into  specialty (specialty) values ('���������');
insert into  specialty (specialty) values ('��������');
insert into  specialty (specialty) values ('��������');
insert into  specialty (specialty) values ('���������');
insert into  specialty (specialty) values ('������');
insert into  specialty (specialty) values ('�����');

---------PERSONAL_INFORMATION---------
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (1, '�. �����', '2507697643', '�. �����, ��. ������� �. 5�, ��. 22', '�. �����, ��. ������� �. 5�, ��. 22', '�����', 2, '19.09.1998');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (2, '�. ������', '3104124558', '�. �����, ��. ��������� �. 21, ��. 56', '�. �����, ��. ��������� �. 21, ��. 56', '�� �����', 0, '08.01.1997');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (3, '�. ���������', '7658593211', '�. �����, ��. 8 ����� �. 15, ��. 10', '�. ���������, ��. �������� �. 87, ��. 13', '�� �����', 0, '22.08.1980');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (4,  '�. �����', '1278439629', '�. �����, ��. ����������������� �. 13, ��. 12', '�. �����, ��. ����������������� �. 13, ��. 12', '�������', 1, '15.04.1978');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (5,  '�. �������', '3456285439', '�. �����, ��. ������������ �. 14, ��. 44', '�. �����, ��. ������������ �. 14, ��. 44', '�� �������', 0, '03.12.1969');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (6,  '�. ���������', '1980754287', '�. �����, ��. �������� �. 10, ��. 43', '�. �����, ��. �������� �. 10, ��. 43', '�����', 1, '28.02.1981');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (7,  '�. ������', '1554389876', '�. �����, ��. ������������ �. 22, ��. 67', '�. �����, ��. ������������ �. 22, ��. 67', '�������', 2, '22.08.1980');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (8,  '�. �����', '3245673298', '�. �����, ��. ����������� �. 17, ��. 56', '�. �����, ��. ����������� �. 17, ��. 56', '�����', 1, '15.04.1978');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (14,  '�. �����', '1276844398', '�. �����, ��. ������� �. 89, ��. 12', '�. �����, ��. ������� �. 89, ��. 12', '�������', 1, '11.09.1966');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (15,  '�. �����', '8765452187', '�. �����, ��. ������������ �. 67, ��. 54', '�. �����, ��. ������������ �. 67, ��. 54', '�� �����', 0, '13.03.1976');

---------OFFICIAL_INFORMATION---------
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (14376298, 1, '�������', '������', '������������', 1, 1, '������', 8, '10 ���', '80(29)192-34-98', 20000, '��������', 1);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (16581963, 2, '������', '����', '���������', 1, 2, '������', 4, '5 ���', '80(29)679-22-58', 8000, '�� ��������', 2);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (19022209, 3, '�������', '������', '����������', 2, 4, '������-�����������', 2, '9 ���', '80(29)670-04-53', 1200, '��������', 3);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (14572945, 4, '��������', '����', '���������', 2, 3, '������-�����������', 6, '3 ����', '80(44)231-00-12', 800, '�� ��������', 4);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (12649913, 5, '���������', '�����', '���������', 3, 6, '������', 3, '3 ����', '80(44)546-02-06', 15000, '��������', 5);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (19592652, 6, '������', '�����', '���������', 2, 5, '������-�����������', 5, '6 ���', '80(44)231-00-12', 900, '�� ��������', 17);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (15449161, 7, '��������', '����������', '�������������', 3, 9, '������', 3, '7 ���', '80(44)749-12-56', 1000, '��������', 6);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (12520954, 8, '������', '�����', '����������', 4, 8, '������', 1, '11 ���', '80(44)657-43-07', 20000, '�� ��������', 7);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (12286299, 15, '��������', '���������', '���������', 3, 7, '������-�����������', 7, '8 ���', '80(29)456-61-12', 760, '��������', 8);
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status,  EmployeeAddress)
  values (16427018, 14, '�������', '�����', '������������', 4, 8, '������', 1, '3 ���', '80(29)128-54-21', 10000, '�� ��������', 9);