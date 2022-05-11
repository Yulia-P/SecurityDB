--1.	������� Report
create table Report
(
    id NUMBER GENERATED by default on null as IDENTITY,
    xm XMLTYPE
);
select * from Report

 insert into report values 
 (1, xmltype('<?xml version="1.0"?>
 <OINF>
    <systimestamp>06-MAY-22 10.33.06.765000 AM +03:00</systimestamp>
    <passpor>1276844398</passpor>
    <department>4</department>
</OINF>'));
commit;

 insert into report values 
 (2, xmltype('<?xml version="1.0"?>
 <OINF>
    <systimestamp>06-MAY-22 10.33.06.765000 AM +03:00</systimestamp>
    <passpor>7658593211</passpor>
    <department>3</department>
</OINF>'));
commit;

delete from Report
drop  function gXML1

-- 2.	��������� ��������� XML
create or replace function gXML1
return xmltype 
as
  xml xmltype;
  b nvarchar2(600);
begin
  b:='select systimestamp, personal_inf.passport, departments.department from official_inf 
  inner join personal_inf on official_inf.personalNum=personal_inf.personalNum
  inner join departments on departments.idDep=official_inf.idDep';

  dbms_output.put_line(b);
        
  select xmlelement("XML", xmlelement(evalname('official_inf'), dbms_xmlgen.getxmltype( b ))) into xml from dual;
  return xml;
end gXML1;

set serveroutput on
select (gXML1).getstringval() from dual;
select * from personal_inf

---- 3.	�������  XML 
CREATE OR REPLACE PROCEDURE InsXML(
    idx integer,
    x IN XMLTYPE)
IS
BEGIN
  INSERT INTO Report (id, xm) 
  VALUES (idx, x);
  COMMIT;
END;

begin
InsXML(2, gXML1);
end;



select * from Report;
select r.xm.GETSTRINGVAL() from Report r;


---

select id, extractvalue(xm, '/official_inf/ROWSET/ROW/SYSTIMESTAMP') from Report;
--4.	 ������ ��� XML-�������� 
drop index xmlInd
create index xmlInd2 on Report(extractvalue(xm, '/XML/official_inf/text()'));

alter index xmlInd2 MONITORING USAGE;

alter index xmlInd NOMONITORING USAGE;

SELECT * FROM v$object_usage;


--5. ���������� 
--drop procedure FindXML
 select t.xm.extract('/XML/official_inf/ROWSET/ROW').GETSTRINGVAL() from Report t;
 
 drop function gXML1
 drop PROCEDURE InsXML
 drop  table Report 

-----INDEX
select * from report
 
select id, r.xm.getclobval() from report r;
select id, r.xm.getstringval() from report r;

SELECT * FROM report r WHERE r.xm.extract('//department/text()').getNumberVal()= 3;

CREATE INDEX report_index ON report (xm.extract('//department/text()').getNumberVal());

alter index report_index MONITORING USAGE;

SELECT * FROM v$object_usage;

alter index test_xmlindex NOMONITORING USAGE;

DROP INDEX report_index;