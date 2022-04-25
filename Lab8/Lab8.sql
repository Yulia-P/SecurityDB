create tablespace blobts
datafile 'E:\Lab8\blobts.dbf'
size 50m autoextend on next 1m;

create user c##ublob identified by 12345;

grant all privileges to c##ublob;

alter user c##ublob container=all;

select * from v$tablespace;

alter user c##ublob default tablespace blobts quota unlimited on blobts
account unlock container=current;

--create directory Bfile_dir as 'C:/Bfile';
--create directory BigF as 'C:/BigF';
create directory BLOBS as 'E:\Lab8';

grant read, write on directory BLOBS to c##ublob;

connect c##ublob/12345

create table BigF (
    username varchar2(50) not null,
    foto blob not null,
    doc bfile);

insert into BigF
    values ('Yulia', 
            utl_raw.cast_to_raw('E:\Lab8\march.jpg'),
            BFILENAME( 'BLOBS', 'L.pdf'));
            
select * from BigF;
delete BigF;



