
/*STGeomFromText(геометрия_тегированный_текст, SRID)
— представление экземпляра геометрии , который вы хотите вернуть. геометрия_tagged_text является выражением nvarchar(max) .
— идентификатор пространственной привязки экземпляра геометрии , который вы хотите вернуть.*/

--Найти пересечение, исключение или объединение данных.
DECLARE @Ig geometry;  --Тип плоскостных пространственных данных, геометрия , реализован как тип данных CLR в SQL Server. Этот тип представляет данные в евклидовой системе координат
DECLARE @Ih geometry;  
SET @Ig = geometry::STGeomFromText('POLYGON((0 0, 0 2, 2 2, 2 0, 0 0))', 0);  -- Возвращает экземпляр геометрии из представления общеизвестного текста
SET @Ih = geometry::STGeomFromText('POLYGON((-5 -5, -5 5, 5 5, 5 -5, -5 -5))', 0);  
SELECT @Ig.STIntersection(@Ih).ToString();  -- возвращает объект, представляющий точки пересечения экземпляра геометрии с другим экземпляром геометрии .

DECLARE @Dg geometry;  
DECLARE @Dh geometry;  
SET @Dg = geometry::STGeomFromText('POLYGON((0 0, 2 2, 2 2, 2 0, 0 0))', 0);  
SET @Dh = geometry::STGeomFromText('POLYGON((1 1, 3 1, 3 3, 3 3, 1 1))', 0);  
SELECT @Dg.STDifference(@Dh).ToString(); -- возвращает объект, представляющий набор точек из одного экземпляра геометрии , который не лежит в пределах другого экземпляра геометрии 

----
declare @g1 geometry; 
select @g1 = ogr_geometry from gadm36_blr_2 where ogr_fid = 3;
declare @g2 geometry; 
select @g2 = ogr_geometry from gadm36_blr_2 where ogr_fid = 1;
select @g1.STIntersects(@g2) as [Пересеклось], @g1.STCrosses(@g2) as [Объединилось], @g1.STContains(@g2) as [Исключилось];

--Найти расстояние между двумя объектами
--Расстояние от одного Отдела к другому
create view distance as select ogr_fid, ogr_geometry, department from departments d inner join gadm36_blr_2 g on d.locationDep = g.ogr_fid; 

select * from distance;

declare @org1 geometry;
declare @org2 geometry;
declare @dist float;
select @org1 = ogr_geometry.STAsText() from distance where ogr_fid=17;
select @org2 = ogr_geometry.STAsText() from distance where ogr_fid=5;
select @dist = @org1.STDistance(@org2); --Возвращает кратчайшее расстояние между точкой в экземпляре geography и точкой в другом экземпляре geography
select @dist as 'Distance', (select department from distance where ogr_fid=17) as 'Dep1', department as 'Dep2' from distance where ogr_fid=5;

select * from departments;

-- Находим ближайший к Сотруднику Отдел 
 select surname as 'Employee', department as 'Dep', gb.name_1 as 'EmployeeCity', gb.name_2 as 'DepCity'
		from official_inf oi 
		inner join departments dp on oi.EmployeeAddress = 9
		inner join gadm36_blr_2 gb on dp.locationDep = gb.ogr_fid where gb.ogr_fid between 1 and 70; 

-- Площадь которую охватывает Отдел 
select department as 'Dep', name_1 as 'DepCity', ogr_geometry.STArea() as 'Area' -- Возвращает общую площадь поверхности экземпляра geography
 from departments dp 
  join gadm36_blr_2 gb on dp.locationDep = gb.ogr_fid
   where dp.idDep = 3;

-- Площадь кототрую охватывает Сотрудник Отдела
select department as 'Dep', surname as 'Employee', name_1 as 'EmployeeCity', name_2 as 'DepCity', ogr_geometry.STArea() as 'Area'
  from official_inf oi 
  join gadm36_blr_2 gb on oi.EmployeeAddress = gb.ogr_fid
   join departments dp on oi.idEmployee = 12286204  where dp.idDep=3;

-- Карты покрытия Сотрудника 
declare @idEmployee int = 15449161;
declare @region int;
select @region = EmployeeAddress from official_inf oi
 join gadm36_blr_2 gb on gb.ogr_fid = oi.EmployeeAddress where oi.idEmployee = @idEmployee;
declare @card nvarchar(max);
select @card = ogr_geometry.STAsText() from gadm36_blr_2 where ogr_fid=@region; -- Этот текст не будет содержать никаких значений Z (высота) или M (мера), переносимых экземпляром.
DECLARE @geo as GEOMETRY;
select @geo = geometry::STGeomFromText(@card, 0) -- экземпляр геометрии из представления общеизвестного текста Открытого геопространственного консорциума, дополненный любыми значениями Z (высота) и M (мера), переносимыми экземпляром.
select @geo as Card, surname as 'Employee', department as 'Dep' from official_inf oi inner join departments dp on dp.idDep=oi.idDep where idEmployee=@idEmployee ;

-- Карта покрытия Отдела
declare @idDep int = 4;
declare @regionD int;
select @regionD = locationDep from departments dp join gadm36_blr_2 gb on gb.ogr_fid = dp.locationDep where dp.idDep = @idDep;
declare @cardD nvarchar(max);
select @cardD = ogr_geometry.STAsText() from gadm36_blr_2 where ogr_fid=@regionD;
DECLARE @geoD as GEOMETRY;
select @geoD = geometry::STGeomFromText(@cardD, 0)
select @geoD as 'Card', department as 'Dep' from departments where idDep=@idDep;

select * from gadm36_blr_2;


/*DECLARE @g geometry;   
SET @g = geometry::STPolyFromWKB(0x0103000000010000000400000000000000000014400000000000001440000000000000244000000000000014400000000000002440000000000000244000000000000014400000000000001440, 0);  
SELECT @g.STAsText();  

declare @idDep int = 4;
declare @pol int;
select @pol = locationDep from departments dp join gadm36_blr_2 gb on gb.ogr_fid = dp.locationDep where dp.idDep = @idDep;
declare @poll nvarchar(max);
select @poll = ogr_geometry.STAsText() from gadm36_blr_2 where ogr_fid=@pol;
DECLARE @tre as GEOMETRY;
select @tre = geometry::STGeomFromText(@poll, 0)
declare @geoP  as GEOMETRY;
select @geoP = geometry::STPolyFromWKB(@tre, 0)
select @geoP.STAsText() as 'Card', department as 'Dep' from departments where idDep=@idDep;*/

-- Изменить (уточнить) пространственный объект, добавляя дополнительные точки
declare @g geometry = geometry::STGeomFromText('Point(0 2)', 0);
select @g.STBuffer(2) as geo, @g.STBuffer(2).ToString() as point from gadm36_blr_2