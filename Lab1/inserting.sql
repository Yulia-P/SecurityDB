  select * from departments;
  select * from posts;
  select * from specialty;
  select * from personal_inf;
  select * from official_inf;
 
---------DEPARTMENTS---------
insert into departments (department, leader, phoneNum) 
  values ('������������ �����', '������ ����� ��������', '327-09-07');
insert into departments (department, leader, phoneNum) 
  values ('����� ���������� � ���������', '�������� ���� ��������', '445-76-05');
insert into departments (department, leader, phoneNum) 
  values ('����� ����������� ��������', '��������� ����� ����������', '875-01-34');
insert into departments (department, leader, phoneNum) 
  values ('����� ����������', '������ ��������� �����������', '121-07-32');

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
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (14376298, 1, '�������', '������', '������������', 1, 1, '������', 8, '10 ���', '80(29)192-34-98', 20000, '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (16581963, 2, '������', '����', '���������', 1, 2, '������', 4, '5 ���', '80(29)679-22-58', 8000, '�� ��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (19022209, 3, '�������', '������', '����������', 2, 4, '������-�����������', 2, '9 ���', '80(29)670-04-53', 1200, '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (14572945, 4, '��������', '����', '���������', 2, 3, '������-�����������', 6, '3 ����', '80(44)231-00-12', 800, '�� ��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (12649913, 5, '���������', '�����', '���������', 3, 6, '������', 3, '3 ����', '80(44)546-02-06', 15000, '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (19592652, 6, '������', '�����', '���������', 2, 5, '������-�����������', 5, '6 ���', '80(44)231-00-12', 900, '�� ��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (15449161, 7, '��������', '����������', '�������������', 3, 9, '������', 3, '7 ���', '80(44)749-12-56', 1000, '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (12520954, 8, '������', '�����', '����������', 4, 8, '������', 1, '11 ���', '80(44)657-43-07', 20000, '�� ��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (12286204, 15, '��������', '���������', '���������', 3, 7, '������-�����������', 7, '8 ���', '80(29)456-61-12', 760, '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (16427018, 14, '�������', '�����', '������������', 4, 8, '������', 1, '3 ���', '80(29)128-54-21', 10000, '�� ��������');