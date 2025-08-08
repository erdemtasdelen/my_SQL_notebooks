create database kısıtlayıcı2

use kısıtlayıcı2





create table kisi(
    id int IDENTITY(1,1),
    ad varchar(15),
    tc varchar(11),
    CONSTRAINT pk_id PRIMARY KEY(id),
    CONSTRAINT tc_no UNIQUE(tc),
    CONSTRAINT tcno_uz check(len(tc)=11)
)

select * from kisi






insert into kisi values ('Ayse','84749484371')

insert into kisi values ('Ayse','847494843712')
--String or binary data would be truncated in table 'kısıtlayıcı2.dbo.kisi', column 'tc'. Truncated value: '84749484371'. The statement has been terminated.

insert into kisi values ('Ali','84749480002')

select * from kisi
