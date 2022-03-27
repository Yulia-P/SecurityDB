sp_configure 'show advanced options', 1;    
GO    
RECONFIGURE;    
GO    
sp_configure 'clr strict security', 0;    
GO    
RECONFIGURE;    
GO 
exec sp_configure 'clr enabled', 1;
go
reconfigure;
go
GO
EXEC sp_configure 'xp_cmdshell', 1
GO
RECONFIGURE
GO

drop procedure Employeey;
drop type JobDescription;
drop assembly Employeey;


CREATE ASSEMBLY Employeey from 'C:\Users\37529\Documents\GitHub\SecurityDB\Lab3\Lab3\Lab3\bin\Release\Lab3.dll' WITH PERMISSION_SET = SAFE

go 
CREATE PROCEDURE Employeey
AS  EXTERNAL NAME Employeey.[StoredProcedures].Employeey;

go 
CREATE TYPE dbo.JobDescription
EXTERNAL NAME Employeey.[JobDescription];

exec Employeey;

