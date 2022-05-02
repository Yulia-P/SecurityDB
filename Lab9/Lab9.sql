  select * from ranks;
  select * from departments;
  select * from posts;
  select * from specialty;
  select * from personal_inf;
  select * from official_inf;
  select * from salary_cal_year;

-- Средняя заработная плата;
SELECT AVG(salApr2022) as April, AVG(salMar2022) as March, AVG(salFeb2022) as February,  AVG(salJan2022) as January, AVG(salDec2021) as December , AVG(salNov2021) as November, AVG(salOct2021) as October,AVG(salSept2021) as September,
AVG(salAug2021) as August, AVG(salJuly2021) as July,   AVG(salJune2021) as June,   AVG(salMay2021) as May  FROM salary_cal_year

-- Cравнение заработной платы с одинаковыми по рангу сотрудниками (в %)
declare @rankSal int
select @rankSal=sum(salApr2022) from salary_cal_year sal join official_inf oi on sal.idEmployee=oi.idEmployee group by idRank

select (sum(salApr2022)*100.00/@rankSal), surname, count(id) over(partition by idRank) as CountOfEmp from salary_cal_year sal join 
official_inf oi on sal.idEmployee=oi.idEmployee group by  surname, id, idRank

-- Сравнение заработной платы с сотрудниками этого же отдела (в %)
declare @depSal int
select @depSal=sum(salApr2022) from salary_cal_year sal join official_inf oi on sal.idEmployee=oi.idEmployee group by idDep

select (sum(salApr2022)*100.00/@depSal), surname, count(id) over(partition by idDep) as CountOfEmp from salary_cal_year sal join 
official_inf oi on sal.idEmployee=oi.idEmployee group by  surname, id, idDep

-- Продемонстрируйте применение функции ранжирования ROW_NUMBER() для разбиения результатов запроса на страницы (по 20 строк на каждую страницу).
SELECT  *
FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY personalNum ) AS RowNum, *
          FROM      personal_inf
        ) AS RowConstrainedResult
WHERE   RowNum >= 1
    AND RowNum <= 20
ORDER BY RowNum

-- Продемонстрируйте применение функции ранжирования ROW_NUMBER() для удаления дубликатов
create table ranksDuplicate( --ранг сотрудника
 idRank int, --идентификатор
 ranks varchar(50)); --ранг

insert into ranksDuplicate(idRank, ranks) values (1, 'Генеральный Директор');
insert into ranksDuplicate(idRank, ranks) values (2, 'Заместитель директора');
insert into ranksDuplicate(idRank, ranks) values (3, 'Начальник отдела');
insert into ranksDuplicate(idRank, ranks) values (4, 'Сотрудник');


select count(*) from ranksDuplicate;
	select * from ranksDuplicate;
	insert into ranksDuplicate values (2,'Заместитель директора'), (2,'Заместитель директора');


	delete x from (
	  select *, rn=row_number() over (partition by idRank, ranks order by idRank)
	  from ranksDuplicate
	) x
	where rn > 1;

select * from ranksDuplicate;

--Вернуть для каждого отдела суммы зарплат сотрудников за последние 6 месяцев помесячно.
select idDep, sum(salApr2022) as April2022, sum(salMar2022) as March2022, sum(salFeb2022) as February2022, sum(salDec2021) as December2021, sum(salNov2021) as November2021, 
	sum(salOct2021) October2021 from salary_cal_year sal join official_inf oi on oi.idEmployee=sal.idEmployee group by idDep; 

--Какой сотрудник получил наибольшее число отпусков определенного вида? Вернуть для всех видов.
SELECT surname, MainLAbor, AdditionalLabor, ByPregnancy, childcare, GettingEducation, Personal_Family  FROM Holidays join official_inf on Holidays.idEmployee=official_inf.idEmployee 
WHERE MainLabor = (SELECT MAX(MainLabor) FROM Holidays) or 
AdditionalLabor=(select max(AdditionalLabor) from Holidays) or 
ByPregnancy=(select max(ByPregnancy) from Holidays) or 
childcare=(select max(childcare) from Holidays) or 
GettingEducation=(select max(GettingEducation) from Holidays) or
Personal_Family=(select max(Personal_Family) from Holidays)
