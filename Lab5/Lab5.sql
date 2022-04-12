select * from departments;
select * from official_inf;
select * from posts;
select * from personal_inf;
select * from specialty;
--delete official_inf where personalNum like 1002
--delete official_inf where personalNum like 13
--update official_inf set hid = null

--добавили строки иерархии
alter table official_inf add hid hierarchyid
alter table official_inf add h_level as hid.GetLevel()

--добавление новой строки в posts
insert into posts(post) values('post')

select * from official_inf where idPost like '%1%'
select h_level from official_inf
update posts set post='Ген. Директор' where idPost =1002
select * from posts;


insert into official_inf(idEmployee, personalNum, surname, idDep, idPost, status, hid)
  values(10029876, 1002, 'Director', 1002, 1002, 'Работает', hierarchyid::GetRoot())

go
DECLARE @director hierarchyid   
SELECT @director = hierarchyid::GetRoot()  
FROM official_inf 
update official_inf set hid = @director.GetDescendant(NULL, NULL) where idPost=1

--отобразит все подчиненные узлы с указанием уровня иерархии
go
CREATE PROCEDURE Roots(@level int)    
AS   
BEGIN  
   select hid.ToString(), * from official_inf where hid.GetLevel() = @level;
END;
  
GO  
exec Roots 1;

--добавит подчиненный узел 
CREATE PROC AddOINFhierarchy(@boss int, @idEmployee int, @personalNum int, @surname varchar(50), @name varchar(50), @patronymic varchar(50), @idDep int, @idPost int, @status varchar(50))
as begin
	DECLARE @bossN hierarchyid, @lc hierarchyid  
	--boss level 
	SELECT @bossN = hid FROM official_inf WHERE idEmployee = @boss  

	SELECT @lc = max(hid) FROM official_inf WHERE hid.GetAncestor(1) = @bossN

	insert into official_inf(idEmployee, personalNum, surname, name, patronymic, idDep, idPost, status, hid) values(@idEmployee, @personalNum, @surname, @name, @patronymic, @idDep, @idPost, @status, @bossN.GetDescendant(@lc, NULL))
end
go

select * from official_inf
exec AddOINFhierarchy 12560000, 123007143, 13, 'Васильев', 'Михаил', 'Петрович', 4, 2, 'Работает' 	--works
select * from official_inf

--переместит всю подчиненную ветку 
go
CREATE PROCEDURE MoveRoot(@Obranch int, @Nbranch int )
AS  
BEGIN  
DECLARE @Bold hierarchyid, @Bnew hierarchyid  
SELECT @Bold = hid FROM official_inf WHERE idEmployee = @Obranch ;  --страя ветка
  
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE  
BEGIN TRANSACTION  
SELECT @Bnew = hid FROM official_inf WHERE idEmployee = @Nbranch ; --новая ветка
  
SELECT @Bnew = @Bnew.GetDescendant(max(hid), NULL) FROM official_inf WHERE hid.GetAncestor(1)=@Bnew; 

UPDATE official_inf SET hid = hid.GetReparentedValue(@Bold, @Bnew) WHERE hid.IsDescendantOf(@Bold) = 1;   
 commit;
  END ;  
GO  

exec MoveRoot 123007143, 14376298

go
declare @COINF hierarchyid
select @COINF = hid from official_inf where idEmployee like 14376298
SELECT * FROM official_inf  WHERE hid.IsDescendantOf(@COINF ) = 1


