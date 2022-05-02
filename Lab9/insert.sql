  select * from ranks;
  select * from departments;
  select * from posts;
  select * from specialty;
  select * from personal_inf;
  select * from official_inf;
  select * from salary_cal_year;
  select * from Holidays;

---------RANKS---------
insert into ranks(idRank, ranks) values (1, 'Генеральный Директор');
insert into ranks(idRank, ranks) values (2, 'Заместитель директора');
insert into ranks(idRank, ranks) values (3, 'Начальник отдела');
insert into ranks(idRank, ranks) values (4, 'Сотрудник');

---------DEPARTMENTS---------
insert into departments (department, phoneNum) 
  values ('Коммерческий отдел', '327-09-07');
insert into departments (department, phoneNum) 
  values ('Отдел транспорта и логистики', '445-76-05');
insert into departments (department, phoneNum) 
  values ('Отдел финансового контроля', '875-01-34');
insert into departments (department, phoneNum) 
  values ('Отдел маркетинга', '121-07-32');

---------POSTS---------
insert into posts (post) values ('Генеральный директор');
insert into posts (post) values ('Заместитель директора');
insert into posts (post) values ('Начальник отдела');
insert into posts (post) values ('Менеджер');
insert into posts (post) values ('Диспетчер');
insert into posts (post) values ('Механик');
insert into posts (post) values ('Водитель');
insert into posts (post) values ('Главный бухгалтер');
insert into posts (post) values ('Кассир');
insert into posts (post) values ('Специалист по маркетингу');
insert into posts (post) values ('Бухгалтер');

---------SPECIALTY---------
insert into  specialty (specialty, education) values ('Маркетолог', 'Высшее');
insert into  specialty (specialty, education) values ('Механик', 'Высшее');
insert into  specialty (specialty, education) values ('Бухгалтер', 'Высшее');
insert into  specialty (specialty, education) values ('Менеджер', 'Высшее');
insert into  specialty (specialty, education) values ('Водитель', 'Средне-специальное');
insert into  specialty (specialty, education) values ('Диспетчер', 'Средне-специальное');
insert into  specialty (specialty, education) values ('Кассир', 'Средне-специальное');
insert into  specialty (specialty, education) values ('Юрист', 'Высшее');

---------PERSONAL_INFORMATION---------
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (1, 'г. Минск', '2507697643', 'г. Минск, ул. Кедышко д. 5а, кв. 22',  'Женат', 2, '1998-09-19','80(29)192-34-98');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (2, 'г. Гомель', '3104124558', 'г. Минск, ул. Гошкевича д. 21, кв. 56', 'Не женат', 0, '1997-01-08', '80(29)679-22-58');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (3, 'г. Солигорск', '7658593211', 'г. Минск, ул. 8 Марта д. 15, кв. 10', 'Не женат', 0, '1980-08-22', '80(29)670-04-53');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (4,  'г. Минск', '1278439629', 'г. Минск, ул. Интернациональная д. 13, кв. 12', 'Замежем', 1, '1978-04-15', '80(44)231-00-12');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (5,  'г. Могилев', '3456285439', 'г. Минск, ул. Первомайская д. 14, кв. 44', 'Не замужем', 0, '1969-12-03', '80(44)546-02-06');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (6,  'г. Молодечно', '1980754287', 'г. Минск, ул. Аранская д. 10, кв. 43', 'Женат', 1, '1981-02-28', '80(44)231-00-12');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (7,  'г. Полоцк', '1554389876', 'г. Минск, ул. Городентская д. 22, кв. 67', 'Замужем', 2, '1980-08-22', '80(44)749-12-56');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (8,  'г. Минск', '3245673298', 'г. Минск, ул. Белорусская д. 17, кв. 56', 'Женат', 1, '1978-04-15', '80(44)657-43-07');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (9,  'г. Минск', '1276844398', 'г. Минск, ул. Алеся Дудара д. 89, кв. 12', 'Замужем', 1, '1966-09-11', '80(29)557-84-07');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (10,  'г. Минск', '8765452187', 'г. Минск, Аэрофлотский 1-й пер. д. 67, кв. 54', 'Не женат', 0, '1976-03-13', '80(29)504-42-29');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (11,  'г. Полоцк', '1554389876', 'г. Минск, ул. Бакинская д. 17, кв. 27', 'Замужем', 2, '1980-08-22', '80(25)427-68-25'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (12,  'г. Минск', '3245673298', 'г. Минск, ул. Магазинная д. 88, кв. 123', 'Женат', 1, '1978-04-15', '80(29)667-19-67'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (13,  'г. Минск', '1276844398', 'г. Минск, ул. Таллинская д. 33, кв. 52', 'Замужем', 1, '1966-09-11', '80(33)754-96-93'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (14,  'г. Минск', '1276844398', 'г. Минск, ул. Одоевского д. 89, кв. 12', 'Замужем', 1, '1966-09-11', '80(29)619-90-95');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (15,  'г. Минск', '8765452187', 'г. Минск, ул. Жудро д. 67, кв. 54', 'Не женат', 0, '1976-03-13', '80(29)467-06-44');
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (16,  'г. Полоцк', '1554389876', 'г. Минск, ул. Щепкина д. 17, кв. 27', 'Замужем', 2, '1980-08-22', '80(25)852-57-85'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (17,  'г. Минск', '3245673298', 'г. Минск, ул. Качинская д. 88, кв. 123', 'Женат', 1, '1978-04-15', '80(29)342-75-11'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (18,  'г. Минск', '1276844398', 'г. Минск, ул. Кутузова д. 33, кв. 52', 'Замужем', 1, '1966-09-11', '80(33)637-68-70'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (19,  'г. Минск', '8765452187', 'г. Минск, ул. Южная д. 87, кв. 90', 'Не женат', 0, '1976-03-13', '80(44)170-53-67'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (20,  'г. Минск', '1276844398', 'г. Минск, ул. Лошицкая д. 12, кв. 66', 'Замужем', 1, '1955-09-11', '80(33)637-68-70'); 
insert into personal_inf(personalNum, placeBirth, passport, address, maritalStat, children, dateBirth, phoneNum) 
  values (21,  'г. Минск', '8765452187', 'г. Минск, ул. Набережная д. 21, кв. 1', 'Не женат', 0, '1976-03-13', '80(44)170-53-67'); 

---------OFFICIAL_INFORMATION---------
--коммерческий отдел
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (17913392, 1, 'Старков', 'Андрей', 'Владимирович', 1, 4, 8, 4, '10 лет', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (18966058, 2, 'Иванов', 'Петр', 'Михалович', 1, 4, 4, 4, '5 лет', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (11905743, 3, 'Сидоров', 'Михаил', 'Васильевич', 1, 4, 4, 4, '9 лет', 'Работает');
--транспортный отдел
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (11907867, 4, 'Полякова', 'Анна', 'Семеновна', 2, 6, 2, 4, '3 года', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (16705495, 5, 'Воробьева', 'Ольга', 'Андреевна', 2, 5, 6, 4, '3 года', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (16705104, 6, 'Петров', 'Антон', 'Сергеевич',2, 6, 2, 4, '6 лет', 'Работает');
  --финансовый
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (11963806, 7, 'Королева', 'Александра', 'Александровна', 3, 8, 3, 4, '7 лет', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (18258862, 8, 'Егоров', 'Артем', 'Валерьевич', 3, 11, 3, 4, '11 лет', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (10802044, 9, 'Рыжкова', 'Дамира', 'Робертовна', 3, 11, 3, 4, '8 лет',  'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (18942051, 10, 'Сатин', 'Карим', 'Евгеньевич', 3, 9, 7, 4, '8 лет',  'Работает');
 --маркетинговый
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (18130933, 11, 'Ковальский', 'Олег', 'Ярославович', 4, 10, 1, 4, '8 лет',  'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (15505447, 12, 'Васильченко', 'Алла', 'Олеговна', 4, 10, 1, 4, '8 лет',  'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (15044334, 13, 'Усенко', 'Степан', 'Григорьевич', 4, 10, 1, 4, '8 лет',  'Работает');
 --ген директор
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idPost, idSpec, idRank, experience, status)
 values (15124747, 14, 'Абрамова', 'Екатерина', 'Абрамовна', 1, 8, 1, '8 лет', 'Работает');
 --зам директора
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idPost, idSpec, idRank, experience, status)
 values (14666101, 15, 'Лещенко', 'Антон', 'Владимирович', 2, 8, 2, '11 лет','Работает');
 --начальники отделов
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (10848648, 16, 'Войтов', 'Антон', 'Иванович', 4, 3, 8, 3, '14 лет', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (15515194, 17, 'Николаев', 'Иван', 'Олегович', 3, 3, 8, 3, '12 лет', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (19520705, 18, 'Полянская', 'Ольга', ' Николаевна', 2, 3, 8, 3,  '9 лет', 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
 values (11979263, 19, 'Кротов', 'Александр', 'Викентьевич', 1, 3, 8, 3, '8 лет', 'Работает');

--транспортный
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (13403959, 20, 'Попово', 'Арсений,', 'Сергеевич', 2, 6, 2, 4, '3 года', 'Работает');
--коммерческий
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, idSpec, idRank, experience, status)
  values (18096204, 21, 'Токарев', 'Денис', 'Петрович', 1, 4, 4, 4, '5 лет', 'Работает');

---------SALARY_CAL_YEAR---------
--генд директор 14
insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (1, 15124747, 30000, 29963, 29999, 30200, 32000, 31050, 36800, 38000, 33680, 35670, 35600, 37800);
 --зам директора 15
insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (2, 14666101, 28800, 29500, 29999, 30000, 28600, 28750, 29800, 30000, 31000, 28900, 29780, 29880);
 --начальник комерческого отдела 16
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (3, 11979263, 4, 28800, 29500, 29999, 30000, 28600, 28750, 29800, 30000, 31000, 28900, 29780, 29880);
--комерческий отдел 1 2 3 21
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (4, 17913392, 4, 21800, 22500, 21999, 20000, 22600, 23750, 22800, 21000, 22000, 22900, 21780, 22880);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (5, 18966058, 4, 20000, 19800, 19999, 18000, 18600, 18750, 18800, 19000, 19700, 19800, 19780, 19880);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (6, 11905743, 4, 21800, 19999, 18600, 19880, 19780, 18750, 18750, 18800, 19800, 19700, 19000, 18000);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (21, 18096204, 4, 7500, 7600, 9600, 7450, 8600, 7000, 7400, 9000, 7800, 9500, 7280, 9590);
--начальник транспортного 17
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (7, 19520705, 3, 25000, 25500, 27600, 27450, 28600, 27050, 25400, 27000, 25000, 26900, 27080, 25880);
--транспортный отдел 4 5 6 20
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (8, 11907867, 3, 9000, 9500, 9600, 9450, 9600, 9050, 8400, 7000, 10000, 8900, 9080, 8880);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (9, 16705495, 3, 7900, 8500, 7600, 7450, 6600, 8050, 6400, 7000, 7800, 6900, 6000, 8000);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (10, 16705104, 3, 7500, 7600, 9600, 7450, 8600, 7000, 7400, 9000, 7800, 9500, 7280, 9590);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (20, 13403959, 3, 21800, 19999, 18600, 19880, 19780, 18750, 18750, 18800, 19800, 19700, 19000, 18000);
--начальник финансового 18
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (11, 15515194, 2, 27800, 25500, 28900, 27000, 28500, 28750, 29800, 25400, 27000, 26900, 28700, 28080);
 --финансовый отдел 7 8 9 10
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (12, 11963806, 2, 13800, 15000, 14900, 12000, 11500, 12500, 12000, 12400, 12700, 11900, 11700, 12180);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (13, 18258862, 2, 10800, 12800, 11900, 14000, 13400, 11750, 12400, 13500, 14000, 12000, 14700, 11000);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (14, 10802044, 2, 14000, 11800, 14900, 13000, 12500, 13700, 11800, 14400, 12700, 14600, 11700, 14800);
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (15, 18942051, 2, 9500, 7400, 9590, 7450, 7280, 8600, 7600, 7500, 9600, 9000, 7800, 7000);
 --начальник маркетингового 19
insert into salary_cal_year (id, idEmployee, idDep, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
 values (16, 10848648, 1, 28500, 25900, 30000, 28000, 28600, 27500, 28500, 28700, 29000, 29070, 27780, 28850);
--маркетинговый отдел 11 12 13
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

 MainLabor int, -- основной трудовой отпуск
  AdditionalLabor int, --дополнительный трудовой отпуск
  ByPregnancy int, --социальный по беременности
  childcare int, --социальный по уходу за детьми
  GettingEducation int, -- социальный в связи с получением образования;
  Personal_Family int)

-- --генд директор 14
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (1, 15124747, 30000, 29963, 29999, 30200, 32000, 31050, 36800, 38000, 33680, 35670, 35600, 37800);
-- --зам директора 15
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (2, 14666101, 28800, 29500, 29999, 30000, 28600, 28750, 29800, 30000, 31000, 28900, 29780, 29880);
-- --начальник комерческого отдела 16
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (3, 11979263, 28800, 29500, 29999, 30000, 28600, 28750, 29800, 30000, 31000, 28900, 29780, 29880);
----комерческий отдел 1 2 3 21
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (4, 17913392,  21800, 22500, 21999, 20000, 22600, 23750, 22800, 21000, 22000, 22900, 21780, 22880);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (5, 18966058,  20000, 19800, 19999, 18000, 18600, 18750, 18800, 19000, 19700, 19800, 19780, 19880);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (6, 11905743,  21800, 19999, 18600, 19880, 19780, 18750, 18750, 18800, 19800, 19700, 19000, 18000);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (21, 18096204, 7500, 7600, 9600, 7450, 8600, 7000, 7400, 9000, 7800, 9500, 7280, 9590);
----начальник транспортного 17
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (7, 19520705,  25000, 25500, 27600, 27450, 28600, 27050, 25400, 27000, 25000, 26900, 27080, 25880);
----транспортный отдел 4 5 6 20
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (8, 11907867,  9000, 9500, 9600, 9450, 9600, 9050, 8400, 7000, 10000, 8900, 9080, 8880);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (9, 16705495,  7900, 8500, 7600, 7450, 6600, 8050, 6400, 7000, 7800, 6900, 6000, 8000);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (10, 16705104,  7500, 7600, 9600, 7450, 8600, 7000, 7400, 9000, 7800, 9500, 7280, 9590);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (20, 13403959,  21800, 19999, 18600, 19880, 19780, 18750, 18750, 18800, 19800, 19700, 19000, 18000);
----начальник финансового 18
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (11, 15515194,  27800, 25500, 28900, 27000, 28500, 28750, 29800, 25400, 27000, 26900, 28700, 28080);
-- --финансовый отдел 7 8 9 10
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (12, 11963806,  13800, 15000, 14900, 12000, 11500, 12500, 12000, 12400, 12700, 11900, 11700, 12180);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (13, 18258862,  10800, 12800, 11900, 14000, 13400, 11750, 12400, 13500, 14000, 12000, 14700, 11000);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (14, 10802044,  14000, 11800, 14900, 13000, 12500, 13700, 11800, 14400, 12700, 14600, 11700, 14800);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (15, 18942051,  9500, 7400, 9590, 7450, 7280, 8600, 7600, 7500, 9600, 9000, 7800, 7000);
-- --начальник маркетингового 19
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (16, 10848648,  28500, 25900, 30000, 28000, 28600, 27500, 28500, 28700, 29000, 29070, 27780, 28850);
----маркетинговый отдел 11 12 13
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (17, 18130933,  10825, 14893, 15737, 14727, 13110, 10102, 15977, 12600, 15028, 14991, 16878, 15054);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (18, 15505447,  11309, 11944, 14074, 12823, 10618, 15084, 10543, 10496, 14966, 10793, 10855, 10191);
--insert into salary_cal_year (id, idEmployee, salApr2022, salMar2022,  salFeb2022, salJan2022, salDec2021, salNov2021, salOct2021, salSept2021, salAug2021, salJuly2021, salJune2021, salMay2021)
-- values (19, 15044334, 18798,  14903, 16915, 17589, 15699, 15546, 15161, 14955, 16146, 18420, 16323, 17165);


