  select * from ranks;
  select * from departments;
  select * from posts;
  select * from specialty;
  select * from personal_inf;
  select * from official_inf;
  select * from salary_cal_year;
  select * from Holidays;

---------RANKS---------
insert into ranks(idRank, ranks) values (1, '����������� ��������');
insert into ranks(idRank, ranks) values (2, '����������� ���������');
insert into ranks(idRank, ranks) values (3, '��������� ������');
insert into ranks(idRank, ranks) values (4, '���������');

---------DEPARTMENTS---------
insert into departments (department, phoneNum) 
  values ('������������ �����', '327-09-07');
insert into departments (department, phoneNum) 
  values ('����� ���������� � ���������', '445-76-05');
insert into departments (department, phoneNum) 
  values ('����� ����������� ��������', '875-01-34');
insert into departments (department, phoneNum) 
  values ('����� ����������', '121-07-32');

---------POSTS---------
insert into posts (post) values ('����������� ��������');
insert into posts (post) values ('����������� ���������');
insert into posts (post) values ('��������� ������');
insert into posts (post) values ('��������');
insert into posts (post) values ('���������');
insert into posts (post) values ('�������');
insert into posts (post) values ('��������');
insert into posts (post) values ('������� ���������');
insert into posts (post) values ('������');
insert into posts (post) values ('���������� �� ����������');
insert into posts (post) values ('���������');

---------SPECIALTY---------
insert into  specialty (specialty, education) values ('����������', '������');
insert into  specialty (specialty, education) values ('�������', '������');
insert into  specialty (specialty, education) values ('���������', '������');
insert into  specialty (specialty, education) values ('��������', '������');
insert into  specialty (specialty, education) values ('��������', '������-�����������');
insert into  specialty (specialty, education) values ('���������', '������-�����������');
insert into  specialty (specialty, education) values ('������', '������-�����������');
insert into  specialty (specialty, education) values ('�����', '������');

---------PERSONAL_INFORMATION---------
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (1, '�. �����', '2507697643', '�. �����, ��. ������� �. 5�, ��. 22',  '�����', 2, '1998-09-19','80(29)192-34-98');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (2, '�. ������', '3104124558', '�. �����, ��. ��������� �. 21, ��. 56', '�� �����', 0, '1997-01-08', '80(29)679-22-58');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (3, '�. ���������', '7658593211', '�. �����, ��. 8 ����� �. 15, ��. 10', '�� �����', 0, '1980-08-22', '80(29)670-04-53');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (4,  '�. �����', '1278439629', '�. �����, ��. ����������������� �. 13, ��. 12', '�������', 1, '1978-04-15', '80(44)231-00-12');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (5,  '�. �������', '3456285439', '�. �����, ��. ������������ �. 14, ��. 44', '�� �������', 0, '1969-12-03', '80(44)546-02-06');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (6,  '�. ���������', '1980754287', '�. �����, ��. �������� �. 10, ��. 43', '�����', 1, '1981-02-28', '80(44)231-00-12');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (7,  '�. ������', '1554389876', '�. �����, ��. ������������ �. 22, ��. 67', '�������', 2, '1980-08-22', '80(44)749-12-56');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (8,  '�. �����', '3245673298', '�. �����, ��. ����������� �. 17, ��. 56', '�����', 1, '1978-04-15', '80(44)657-43-07');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (9,  '�. �����', '1276844398', '�. �����, ��. ����� ������ �. 89, ��. 12', '�������', 1, '1966-09-11', '80(29)557-84-07');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (10,  '�. �����', '8765452187', '�. �����, ������������ 1-� ���. �. 67, ��. 54', '�� �����', 0, '1976-03-13', '80(29)504-42-29');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (11,  '�. ������', '1554389876', '�. �����, ��. ��������� �. 17, ��. 27', '�������', 2, '1980-08-22', '80(25)427-68-25'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (12,  '�. �����', '3245673298', '�. �����, ��. ���������� �. 88, ��. 123', '�����', 1, '1978-04-15', '80(29)667-19-67'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (13,  '�. �����', '1276844398', '�. �����, ��. ���������� �. 33, ��. 52', '�������', 1, '1966-09-11', '80(33)754-96-93'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (14,  '�. �����', '1276844398', '�. �����, ��. ���������� �. 89, ��. 12', '�������', 1, '1966-09-11', '80(29)619-90-95');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (15,  '�. �����', '8765452187', '�. �����, ��. ����� �. 67, ��. 54', '�� �����', 0, '1976-03-13', '80(29)467-06-44');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (16,  '�. ������', '1554389876', '�. �����, ��. ������� �. 17, ��. 27', '�������', 2, '1980-08-22', '80(25)852-57-85'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (17,  '�. �����', '3245673298', '�. �����, ��. ��������� �. 88, ��. 123', '�����', 1, '1978-04-15', '80(29)342-75-11'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (18,  '�. �����', '1276844398', '�. �����, ��. �������� �. 33, ��. 52', '�������', 1, '1966-09-11', '80(33)637-68-70'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (19,  '�. �����', '8765452187', '�. �����, ��. ����� �. 87, ��. 90', '�� �����', 0, '1976-03-13', '80(44)170-53-67'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (20,  '�. �����', '1276844398', '�. �����, ��. �������� �. 12, ��. 66', '�������', 1, '1955-09-11', '80(33)637-68-70'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (21,  '�. �����', '8765452187', '�. �����, ��. ���������� �. 21, ��. 1', '�� �����', 0, '1976-03-13', '80(44)170-53-67'); 

---------OFFICIAL_INFORMATION---------
--������������ �����
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (17913392, 1, '�������', '������', '������������', 1, 4, 8, 4, '10 ���', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (18966058, 2, '������', '����', '���������', 1, 4, 4, 4, '5 ���', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (11905743, 3, '�������', '������', '����������', 1, 4, 4, 4, '9 ���', '��������');
--������������ �����
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (11907867, 4, '��������', '����', '���������', 2, 6, 2, 4, '3 ����', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (16705495, 5, '���������', '�����', '���������', 2, 5, 6, 4, '3 ����', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (16705104, 6, '������', '�����', '���������',2, 6, 2, 4, '6 ���', '��������');
  --����������
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (11963806, 7, '��������', '����������', '�������������', 3, 8, 3, 4, '7 ���', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (18258862, 8, '������', '�����', '����������', 3, 11, 3, 4, '11 ���', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (10802044, 9, '�������', '������', '����������', 3, 11, 3, 4, '8 ���',  '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (18942051, 10, '�����', '�����', '����������', 3, 9, 7, 4, '8 ���',  '��������');
 --�������������
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (18130933, 11, '����������', '����', '�����������', 4, 10, 1, 4, '8 ���',  '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (15505447, 12, '�����������', '����', '��������', 4, 10, 1, 4, '8 ���',  '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (15044334, 13, '������', '������', '�����������', 4, 10, 1, 4, '8 ���',  '��������');
 --��� ��������
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idPost, idSpec, idRank, experience, status)
 values (15124747, 14, '��������', '���������', '���������', 1, 8, 1, '8 ���', '��������');
 --��� ���������
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idPost, idSpec, idRank, experience, status)
 values (14666101, 15, '�������', '�����', '������������', 2, 8, 2, '11 ���','��������');
 --���������� �������
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (10848648, 16, '������', '�����', '��������', 4, 3, 8, 3, '14 ���', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (15515194, 17, '��������', '����', '��������', 3, 3, 8, 3, '12 ���', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (19520705, 18, '���������', '�����', ' ����������', 2, 3, 8, 3,  '9 ���', '��������');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (11979263, 19, '������', '���������', '�����������', 1, 3, 8, 3, '8 ���', '��������');

--������������
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (13403959, 20, '������', '�������,', '���������', 2, 6, 2, 4, '3 ����', '��������');
--������������
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (18096204, 21, '�������', '�����', '��������', 1, 4, 4, 4, '5 ���', '��������');

---------SALARY_CAL_YEAR---------
--���� �������� 14
insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (1, 15124747, 30000, 29963, 29999, 30200, 32000, 31050, 36800, 38000, 33680, 35670, 35600, 37800);
 --��� ��������� 15
insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (2, 14666101, 28800, 29500, 29999, 30000, 28600, 28750, 29800, 30000, 31000, 28900, 29780, 29880);
 --��������� ������������ ������ 16
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (3, 11979263, 4, 28800, 29500, 29999, 30000, 28600, 28750, 29800, 30000, 31000, 28900, 29780, 29880);
--����������� ����� 1 2 3 21
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (4, 17913392, 4, 21800, 22500, 21999, 20000, 22600, 23750, 22800, 21000, 22000, 22900, 21780, 22880);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (5, 18966058, 4, 20000, 19800, 19999, 18000, 18600, 18750, 18800, 19000, 19700, 19800, 19780, 19880);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (6, 11905743, 4, 21800, 19999, 18600, 19880, 19780, 18750, 18750, 18800, 19800, 19700, 19000, 18000);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (21, 18096204, 4, 7500, 7600, 9600, 7450, 8600, 7000, 7400, 9000, 7800, 9500, 7280, 9590);
--��������� ������������� 17
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (7, 19520705, 3, 25000, 25500, 27600, 27450, 28600, 27050, 25400, 27000, 25000, 26900, 27080, 25880);
--������������ ����� 4 5 6 20
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (8, 11907867, 3, 9000, 9500, 9600, 9450, 9600, 9050, 8400, 7000, 10000, 8900, 9080, 8880);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (9, 16705495, 3, 7900, 8500, 7600, 7450, 6600, 8050, 6400, 7000, 7800, 6900, 6000, 8000);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (10, 16705104, 3, 7500, 7600, 9600, 7450, 8600, 7000, 7400, 9000, 7800, 9500, 7280, 9590);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (20, 13403959, 3, 21800, 19999, 18600, 19880, 19780, 18750, 18750, 18800, 19800, 19700, 19000, 18000);
--��������� ����������� 18
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (11, 15515194, 2, 27800, 25500, 28900, 27000, 28500, 28750, 29800, 25400, 27000, 26900, 28700, 28080);
 --���������� ����� 7 8 9 10
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (12, 11963806, 2, 13800, 15000, 14900, 12000, 11500, 12500, 12000, 12400, 12700, 11900, 11700, 12180);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (13, 18258862, 2, 10800, 12800, 11900, 14000, 13400, 11750, 12400, 13500, 14000, 12000, 14700, 11000);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (14, 10802044, 2, 14000, 11800, 14900, 13000, 12500, 13700, 11800, 14400, 12700, 14600, 11700, 14800);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (15, 18942051, 2, 9500, 7400, 9590, 7450, 7280, 8600, 7600, 7500, 9600, 9000, 7800, 7000);
 --��������� �������������� 19
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (16, 10848648, 1, 28500, 25900, 30000, 28000, 28600, 27500, 28500, 28700, 29000, 29070, 27780, 28850);
--������������� ����� 11 12 13
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (17, 18130933, 1, 10825, 14893, 15737, 14727, 13110, 10102, 15977, 12600, 15028, 14991, 16878, 15054);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (18, 15505447, 1, 11309, 11944, 14074, 12823, 10618, 15084, 10543, 10496, 14966, 10793, 10855, 10191);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (19, 15044334, 1, 18798,  14903, 16915, 17589, 15699, 15546, 15161, 14955, 16146, 18420, 16323, 17165);

---------Holidays---------
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
 values(1, 10802044, 6, 2, 1, 1, 0, 5);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(2, 10848648, 10, 4, 2, 2, 1, 7);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(3, 11905743, 9, 4, 0, 0, 6, 4);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(4, 11907867, 2, 2, 0, 0, 1, 2);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(5, 11963806, 6, 1, 1, 1, 0, 3);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(6, 11979263, 8, 5, 0, 0, 1, 0);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(7, 13403959, 2, 1, 0, 0, 0, 1);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(8, 14666101, 11, 8, 0, 0, 5, 0);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(9, 15044334, 7, 4, 1, 1, 1, 3);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(10, 15124747, 7, 3, 1, 1, 3, 0);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(11, 15505447, 7, 4, 0, 1, 4, 0);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(12, 15515194, 11, 8, 0, 1, 3, 1);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(13, 16705104, 5, 1, 0, 0, 1, 1);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(14, 16705495, 2, 0, 0, 0, 0, 0);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(15, 17913392, 9, 7, 0, 3, 4, 6);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(16, 18096204, 4, 1, 0, 0, 2, 0);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(17, 18130933, 7, 3, 2, 4, 0, 1);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(18, 18258862, 11, 3, 0, 0, 1, 1);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(19, 18942051, 7, 7, 0, 0, 3, 0);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(20, 18966058, 4, 2, 0, 0, 1, 0);
insert into Holidays(id, idEmployee, MainLabor,  AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family)
  values(21, 19520705, 7, 3, 1, 1, 2, 0);

 MainLabor int, -- �������� �������� ������
  AdditionalLabor int, --�������������� �������� ������
  ByPregnancy int, --���������� �� ������������
  childcare int, --���������� �� ����� �� ������
  GettingEducation int, -- ���������� � ����� � ���������� �����������;
  Personal_Family int)

-- --���� �������� 14
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (1, 15124747, 30000, 29963, 29999, 30200, 32000, 31050, 36800, 38000, 33680, 35670, 35600, 37800);
-- --��� ��������� 15
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (2, 14666101, 28800, 29500, 29999, 30000, 28600, 28750, 29800, 30000, 31000, 28900, 29780, 29880);
-- --��������� ������������ ������ 16
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (3, 11979263, 28800, 29500, 29999, 30000, 28600, 28750, 29800, 30000, 31000, 28900, 29780, 29880);
----����������� ����� 1 2 3 21
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (4, 17913392,  21800, 22500, 21999, 20000, 22600, 23750, 22800, 21000, 22000, 22900, 21780, 22880);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (5, 18966058,  20000, 19800, 19999, 18000, 18600, 18750, 18800, 19000, 19700, 19800, 19780, 19880);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (6, 11905743,  21800, 19999, 18600, 19880, 19780, 18750, 18750, 18800, 19800, 19700, 19000, 18000);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (21, 18096204, 7500, 7600, 9600, 7450, 8600, 7000, 7400, 9000, 7800, 9500, 7280, 9590);
----��������� ������������� 17
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (7, 19520705,  25000, 25500, 27600, 27450, 28600, 27050, 25400, 27000, 25000, 26900, 27080, 25880);
----������������ ����� 4 5 6 20
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (8, 11907867,  9000, 9500, 9600, 9450, 9600, 9050, 8400, 7000, 10000, 8900, 9080, 8880);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (9, 16705495,  7900, 8500, 7600, 7450, 6600, 8050, 6400, 7000, 7800, 6900, 6000, 8000);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (10, 16705104,  7500, 7600, 9600, 7450, 8600, 7000, 7400, 9000, 7800, 9500, 7280, 9590);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (20, 13403959,  21800, 19999, 18600, 19880, 19780, 18750, 18750, 18800, 19800, 19700, 19000, 18000);
----��������� ����������� 18
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (11, 15515194,  27800, 25500, 28900, 27000, 28500, 28750, 29800, 25400, 27000, 26900, 28700, 28080);
-- --���������� ����� 7 8 9 10
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (12, 11963806,  13800, 15000, 14900, 12000, 11500, 12500, 12000, 12400, 12700, 11900, 11700, 12180);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (13, 18258862,  10800, 12800, 11900, 14000, 13400, 11750, 12400, 13500, 14000, 12000, 14700, 11000);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (14, 10802044,  14000, 11800, 14900, 13000, 12500, 13700, 11800, 14400, 12700, 14600, 11700, 14800);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (15, 18942051,  9500, 7400, 9590, 7450, 7280, 8600, 7600, 7500, 9600, 9000, 7800, 7000);
-- --��������� �������������� 19
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (16, 10848648,  28500, 25900, 30000, 28000, 28600, 27500, 28500, 28700, 29000, 29070, 27780, 28850);
----������������� ����� 11 12 13
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (17, 18130933,  10825, 14893, 15737, 14727, 13110, 10102, 15977, 12600, 15028, 14991, 16878, 15054);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (18, 15505447,  11309, 11944, 14074, 12823, 10618, 15084, 10543, 10496, 14966, 10793, 10855, 10191);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (19, 15044334, 18798,  14903, 16915, 17589, 15699, 15546, 15161, 14955, 16146, 18420, 16323, 17165);


