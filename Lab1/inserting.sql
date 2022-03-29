  select * from departments;
  select * from posts;
  select * from specialty;
  select * from personal_inf;
  select * from official_inf;
 
---------DEPARTMENTS---------
insert into departments (department, leader, phoneNum) 
  values ('Коммерческий отдел', 'Войтов Антон Иванович', '327-09-07');
insert into departments (department, leader, phoneNum) 
  values ('Отдел транспорта и логистики', 'Николаев Иван Олегович', '445-76-05');
insert into departments (department, leader, phoneNum) 
  values ('Отдел финансового контроля', 'Полянская Ольга Николаевна', '875-01-34');
insert into departments (department, leader, phoneNum) 
  values ('Отдел маркетинга', 'Кротов Александр Викентьевич', '121-07-32');

---------POSTS---------
insert into posts (post) values ('Заместитель генерального директора');
insert into posts (post) values ('Менеджер');
insert into posts (post) values ('Диспетчер');
insert into posts (post) values ('Механик');
insert into posts (post) values ('Водитель');
insert into posts (post) values ('Главный бухгалтер');
insert into posts (post) values ('Кассир');
insert into posts (post) values ('Специалист по маркетингу');
insert into posts (post) values ('Бухгалтер');

---------SPECIALTY---------
insert into  specialty (specialty) values ('Маркетолог');
insert into  specialty (specialty) values ('Механик');
insert into  specialty (specialty) values ('Бухгалтер');
insert into  specialty (specialty) values ('Менеджер');
insert into  specialty (specialty) values ('Водитель');
insert into  specialty (specialty) values ('Диспетчер');
insert into  specialty (specialty) values ('Кассир');
insert into  specialty (specialty) values ('Юрист');

---------PERSONAL_INFORMATION---------
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (1, 'г. Минск', '2507697643', 'г. Минск, ул. Кедышко д. 5а, кв. 22', 'г. Минск, ул. Кедышко д. 5а, кв. 22', 'Женат', 2, '19.09.1998');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (2, 'г. Гомель', '3104124558', 'г. Минск, ул. Гошкевича д. 21, кв. 56', 'г. Минск, ул. Гошкевича д. 21, кв. 56', 'Не женат', 0, '08.01.1997');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (3, 'г. Солигорск', '7658593211', 'г. Минск, ул. 8 Марта д. 15, кв. 10', 'г. Солигорск, ул. Грушевка д. 87, кв. 13', 'Не женат', 0, '22.08.1980');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (4,  'г. Минск', '1278439629', 'г. Минск, ул. Интернациональная д. 13, кв. 12', 'г. Минск, ул. Интернациональная д. 13, кв. 12', 'Замежем', 1, '15.04.1978');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (5,  'г. Могилев', '3456285439', 'г. Минск, ул. Первомайская д. 14, кв. 44', 'г. Минск, ул. Первомайская д. 14, кв. 44', 'Не замужем', 0, '03.12.1969');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (6,  'г. Молодечно', '1980754287', 'г. Минск, ул. Аранская д. 10, кв. 43', 'г. Минск, ул. Аранская д. 10, кв. 43', 'Женат', 1, '28.02.1981');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (7,  'г. Полоцк', '1554389876', 'г. Минск, ул. Городентская д. 22, кв. 67', 'г. Минск, ул. Городентская д. 22, кв. 67', 'Замужем', 2, '22.08.1980');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (8,  'г. Минск', '3245673298', 'г. Минск, ул. Белорусская д. 17, кв. 56', 'г. Минск, ул. Белорусская д. 17, кв. 56', 'Женат', 1, '15.04.1978');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (14,  'г. Минск', '1276844398', 'г. Минск, ул. Петрова д. 89, кв. 12', 'г. Минск, ул. Петрова д. 89, кв. 12', 'Замужем', 1, '11.09.1966');
insert into personal_inf(personalNum, placeBirth, passport, address, regAddress, maritalStat,children,dateBirth) 
  values (15,  'г. Минск', '8765452187', 'г. Минск, ул. Володарского д. 67, кв. 54', 'г. Минск, ул. Володарского д. 67, кв. 54', 'Не женат', 0, '13.03.1976');

---------OFFICIAL_INFORMATION---------
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (14376298, 1, 'Старков', 'Андрей', 'Владимирович', 1, 1, 'высшее', 8, '10 лет', '80(29)192-34-98', 20000, 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (16581963, 2, 'Иванов', 'Петр', 'Михалович', 1, 2, 'высшее', 4, '5 лет', '80(29)679-22-58', 8000, 'Не работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (19022209, 3, 'Сидоров', 'Михаил', 'Васильевич', 2, 4, 'средне-специальное', 2, '9 лет', '80(29)670-04-53', 1200, 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (14572945, 4, 'Полякова', 'Анна', 'Семеновна', 2, 3, 'средне-специальное', 6, '3 года', '80(44)231-00-12', 800, 'Не работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (12649913, 5, 'Воробьева', 'Ольга', 'Андреевна', 3, 6, 'высшее', 3, '3 года', '80(44)546-02-06', 15000, 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (19592652, 6, 'Петров', 'Антон', 'Сергеевич', 2, 5, 'средне-специальное', 5, '6 лет', '80(44)231-00-12', 900, 'Не работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (15449161, 7, 'Королева', 'Александра', 'Александровна', 3, 9, 'высшее', 3, '7 лет', '80(44)749-12-56', 1000, 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (12520954, 8, 'Егоров', 'Артем', 'Валерьевич', 4, 8, 'высшее', 1, '11 лет', '80(44)657-43-07', 20000, 'Не работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (12286204, 15, 'Абрамова', 'Екатерина', 'Абрамовна', 3, 7, 'средне-специальное', 7, '8 лет', '80(29)456-61-12', 760, 'Работает');
insert into official_inf (idEmployee, personalNum, surname, name, patronymic, idDep, idPost, education, idSpec, experience, phoneNum, wage, status)
  values (16427018, 14, 'Лещенко', 'Антон', 'Владимирович', 4, 8, 'высшее', 1, '3 лет', '80(29)128-54-21', 10000, 'Не работает');