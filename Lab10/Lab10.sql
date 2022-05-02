--1.	Показать и объяснить, какой режим аутентификации используется для экземпляра SQL Server.

--2.	Создать необходимые учетные записи, роли и пользователей. Объяснить назначение привилегий.
--Login
create Login jjuliaaa with password='jjuliaaa';

--User => Login
use PERSONNELtest
create user jjuliaaa_User for login jjuliaaa;

--Login without login
create user JJUser without login;

--Role
create role user_role;

--Права
grant select, insert, update, delete on ranks to user_role;
revoke update on ranks from user_role;
EXEC sp_addrolemember @rolename = 'user_role', @membername = 'jjuliaaa_User';

--3.	Продемонстрируйте заимствование прав для любой процедуры в базе данных.
use PERSONNELtest

create login log1 with password = 'loginn';
create login log2 with password = 'login';
create user log1 for login log1;
create user log2 for login log2;
go

exec sp_addrolemember 'db_datareader', 'log1';
exec sp_addrolemember 'db_ddladmin', 'log1';
deny select on ranks to log2;
go

create procedure log1Rnks 
	with execute as 'log1'
		as select * from ranks;
go

alter authorization on log1Rnks to log1;

grant execute on log1Rnks to log2;

use PERSONNELtest;

setuser 'log2';
exec log1Rnks;

select * from ranks;

setuser;

select * from ranks;

--4. -10.	Создать для экземпляра SQL Server объект аудита. 
use master;
go

create server audit CustomAudit 
to file(
	filepath = 'C:\db\',
	maxsize = 0 mb,
	max_rollover_files = 0,
	reserve_disk_space = off
) with ( queue_delay = 1000, on_failure = continue);

alter server audit CustomAudit
with (state=on)

select * from sys.server_audits;

--
select * from [PERSONNELtest].dbo.ranks;
insert into  [PERSONNELtest].dbo.ranks(idRank, ranks) values (5, 'ranks');
delete from [PERSONNELtest].dbo.ranks where idRank = 6;
insert top(200) into[PERSONNELtest].dbo.ranks(idRank, ranks) values (7, 'ranks');
update [PERSONNELtest].dbo.ranks set idRank=6 where idRank=7;

--
select statement from fn_get_audit_file('C:\db\*', null, null);	

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
create certificate TestCert
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
select HashBytes('SHA1', 'open the symmetric key with which to encrypt the data');
select HashBytes('MD4', 'open the symmetric key with which to encrypt the data');

--19.	Продемонстрировать применение ЭЦП при помощи сертификата.
	--подписывает текст сертификатом и возвращает подпись
	use [PERSONNELtest];
	select * from sys.certificates;
	-- подписываем
	select SIGNBYCERT(256, N'jjuliaaa', N'pa$W0RD@') as ЭЦП;	--сертификат	

	--0 - изменены, 1 - не изменены
	select VERIFYSIGNEDBYCERT(256, 'jjuliaaa', 0x0100050204000000175411564B440730803D7BBF7D324D691DD63BA7B6AC61846CD35A0648B9175C11231186DE31FF6F2FBD717AAC5AD0710C2C7E88267A86066208DF7836CC1E5707A946F1EBCB76D87D85532AC5702D303C4E47392942BC7277FC2EECC808A0CB207ED3F4EA4B12954585C98927ECE333FE51D7E094A78833BD5E56C247D57F9EC4D41B0918D26BA46FC3EDA50587F87CA98F28107C7801BA46EB0D82B678744F10B603F4802432B0A0E1565C456495838D1D1DDEDF2CDE9E5F56C8064C7CCC6383748A9B46F3E7D9B4E576FDB3E1A1CEC7B6129EA9980DA31B1B5CA40D0609629C1903AA5245F828E5661D2C626BD6B984C3B3D806C127C48958C1E82FD82A09);
	
	select * from sys.asymmetric_keys;
	--
	select SIGNBYASymKey(257, N'jjuuliaaa', N'passAsymm!') as ЭЦП;	--ас.ключ

	--1, когда подписи совпадают; иначе 0.
	select VERIFYSIGNEDBYASYMKEY(257, N'jjuuliaaa', 0x010005020400000029C77321081075850B605AFF72F9C3B472B8D5FF395A829AC0D21D2E2CD98B2B617762A4EDEEA26733FD0E47D5B4C7D450C9743841AAE488E8D1A1972520FF67483B619BAFBF4BB722AC31266C729989AE1D06ACB51973A848AD30E72A5F8BB4CFFE8AFCBE3CAC5E14853B1517B2DB4C09862DC6082FC02C40BAE78160017D8C73977946B97615C40CE2281A210F128E947BEEBB797A17740BCE2EBD72858006C820B1DCAE27492AF51D4ADBD548A3852833C064A80177D9EF9B0874014020250528949F29D59E633135771F7A2483531806A9B6F481D2F5201F8CDA4D47C31AB3CD1E80085704066745BBDB5D149983D5587D841F7FD9DED262147CFE1C0EA5);

--20.	Сделать резервную копию необходимых ключей и сертификатов.
backup certificate TestCert
to file = N'C:\db\backup\BacTestCert.cer'
	with private key(
		file = N'C:\db\backup\BacTestCert.pvk',
		encryption by password = N'pa$W0RD@',
		decryption by password = N'pa$W0RD@');

use master;
BACKUP MASTER KEY TO FILE = 'C:\db\backup\BacMasterKey.key' 
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