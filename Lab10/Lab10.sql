--1.	Показать и объяснить, какой режим аутентификации используется для экземпляра SQL Server.

--2.	Создать необходимые учетные записи, роли и пользователей. Объяснить назначение привилегий.
--Login
create Login jjuliaaai with password='jjuliaaa';

--User => Login
use PERSONNELtest
create user jjuliaaa_User for login jjuliaaai;

--Role
create role user_role;

--Права
grant select, insert, update, delete on ranks to user_role;
revoke update on ranks from user_role;
EXEC sp_addrolemember @rolename = 'user_role', @membername = 'jjuliaaa_User';

--3.	Продемонстрируйте заимствование прав для любой процедуры в базе данных.
use PERSONNELtest

create login logi1 with password = 'loginn';
create login logi2 with password = 'login';
create user logi1 for login logi1;
create user logi2 for login logi2;
go

exec sp_addrolemember 'db_datareader', 'logi1';
exec sp_addrolemember 'db_ddladmin', 'logi1';
deny select on ranks to logi2;
go

create procedure logi1Rnks 
	with execute as 'logi1'
		as select * from ranks;
go

alter authorization on logi1Rnks to logi1;

grant execute on logi1Rnks to logi2;

use PERSONNELtest;

setuser 'logi2';
exec logi1Rnks;

select * from ranks;

setuser;

select * from ranks;

--4. -10.	Создать для экземпляра SQL Server объект аудита. 
use master;
go

create server audit CustomAudit10
to file(
	filepath = 'C:\test10\',
	maxsize = 0 mb,
	max_rollover_files = 0,
	reserve_disk_space = off
) with ( queue_delay = 1000, on_failure = continue);

alter server audit CustomAudit10
with (state=on)

select * from sys.server_audits;

--
select * from [PERSONNELtest].dbo.ranks;
insert into  [PERSONNELtest].dbo.ranks(idRank, ranks) values (5, 'ranks');
delete from [PERSONNELtest].dbo.ranks where idRank = 6;
insert top(200) into[PERSONNELtest].dbo.ranks(idRank, ranks) values (7, 'ranks');
update [PERSONNELtest].dbo.ranks set idRank=6 where idRank=7;

--
select statement from fn_get_audit_file('C:\test10\*', null, null);	

--11.	Создать для экземпляра SQL Server ассиметричный ключ шифрования.
--12.	Зашифровать и расшифровать данные при помощи этого ключа.
use [PERSONNELtest];
create asymmetric key AsymmetricKey
	with algorithm = rsa_2048
	encryption by password = 'passAsymm!';

declare @opentext nvarchar(25);
declare @encryptedtext nvarchar (256);

set @opentext = 'this is encrypted text';
print @opentext;

set @encryptedtext = EncryptByAsymKey(AsymKey_ID('AsymmetricKey'), @opentext);
print @encryptedtext;

set @opentext = DecryptByAsymKey(AsymKey_ID('AsymmetricKey'), @encryptedtext, N'passAsymm!');
print @opentext;

--13.	Создать для экземпляра SQL Server сертификат.
use [PERSONNELtest];
go
create certificate TestCert5
	encryption by password = N'pa$W0RD@'
		with subject = N'Sample Certificate',
	expiry_date = N'2022-12-31';

--14.	Зашифровать и расшифровать данные при помощи этого сертификата.
declare @open_text nvarchar(50);
set @open_text = 'this is encrypted text wuth certificate';
print @open_text;

declare @encr_text nvarchar(256);
set @encr_text = EncryptByCert(Cert_ID('TestCert'), @open_text);
print @encr_text;

set @open_text = CAST(DecryptByCert(Cert_ID('TestCert'), @encr_text, N'pa$W0RD@') as nvarchar(50));
print @open_text;

--15.	Создать для экземпляра SQL Server симметричный ключ шифрования данных.
use [PERSONNELtest];
create symmetric key EKey
with algorithm = AES_256
encryption by password = N'PA$W@RD';

open symmetric key EKey
decryption by password = N'PA$W@RD';

create symmetric key DKey
with algorithm = AES_256
encryption by symmetric key EKey;

open symmetric key DKey
decryption by symmetric key EKey;

--16.	Зашифровать и расшифровать данные при помощи этого ключа.
declare @openn_text nvarchar(512);
set @openn_text = 'this is encrypted text with symmetric key';
print @openn_text;

declare @encri_text nvarchar(1024);
set @encri_text = EncryptByKey(Key_GUID('DKey'), @openn_text);
print @encri_text;

set @openn_text = CAST(DecryptByKey(@encri_text) as nvarchar(512));
print @openn_text;

close symmetric key EKey;
close symmetric key DKey;

--17.	Продемонстрировать прозрачное шифрование базы данных.
use master;
go

create master key encryption by password = 'pa$w@r&';
go

create certificate transparent
	with subject = 'Certificate to encrypt PERSONNELtest DB ', 
	expiry_date = '2022-12-31';
go

use PERSONNELtest;
go

create database encryption key
with algorithm = AES_256
encryption by server certificate transparent;
go

alter database PERSONNELtest 
set encryption on;
go

select encryption_state from sys.dm_database_encryption_keys;

alter database PERSONNELtest 
set encryption off;
go

--18.	Продемонстрировать применение хэширования.
select HashBytes('SHA1', 'show the use of encryption in sql') as SHA1;
select HashBytes('MD2', 'show the use of encryption in sql') as MD2;
select HashBytes('MD4', 'show the use of encryption in sql') as MD4;
select HashBytes('MD5', 'show the use of encryption in sql') as MD5;

--19.	Продемонстрировать применение ЭЦП при помощи сертификата.
	--подписывает текст сертификатом и возвращает подпись
	use [PERSONNELtest];
	select * from sys.certificates;

	-- подписываем
	select SIGNBYCERT(257, N'jjuliaaa', N'pa$W0RD@') as ЭЦП;	--сертификат	

	--0 - изменены, 1 - не изменены
	select VERIFYSIGNEDBYCERT(257, 'jjuliaaa', 0x0100050204000000FEA22DD0CF972511142CAC07027E49F3C35B5A2F1CC8D0B0D0095A8E408F77B718DFEC87D3324583C37169D8BA744A3273AC867D44BADB3DFD9A9DCF04117790235E8194A946D674896E5A6A6AAF0A173DCE5C892DB11B5930CE4F370D060FE7CB811258467B11A353CA4170B23560A373472805C1F72E228A60E707680C8E3AE20374774F2B5D050EA3DD207CC7F82BF2327A533DF467BAA30CF8D914FC0B166BDD2A0595C5B3392898DB642EB798945E7E33AD2CCAE4AC78ED1F535474A8273F0821C2A66DF41CC02A955A9E2A7B97D1D3C4DB0FA64D1DACE1617EB87005FA43D872A9418A75D6F3AF449F416CA3DF1246E9BCD77B35AD8EBE06C82AB98F1C);
	

--20.	Сделать резервную копию необходимых ключей и сертификатов.
backup certificate TestCert5
to file = N'C:\test10\backup\BacTestCert5.cer'
	with private key(
		file = N'C:\test10\backup\BacTestCert5.pvk',
		encryption by password = N'pa$W0RD@',
		decryption by password = N'pa$W0RD@');

use master;
BACKUP MASTER KEY TO FILE = 'C:\test10\backup\BacMasterKey5.key' 
        ENCRYPTION BY PASSWORD = 'pa$w@r&';


--use master
--drop certificate transparent
--drop master key
--drop server audit CustomAudit 
--drop login jjuliaaa

--use PERSONNELtest
--drop symmetric key EKey
--drop symmetric key DKey
--drop certificate TestCert
--drop asymmetric key AsymmetricKey
--drop login log1
--drop login log2
--drop user log1
--drop user log2
--drop  role user_role
--drop user JJUser
--drop user jjuliaaa_User

EXEC sp_srvrolepermission 'sysadmin';--сервер

EXEC sp_dbfixedrolepermission;  --бд