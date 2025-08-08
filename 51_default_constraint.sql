create database kısıtlayıcı3

use kısıtlayıcı3

create table ders(

    id int IDENTITY(1,1),
    ders_ad varchar(50),
    vize int,
    final int,
    CONSTRAINT pk_id PRIMARY KEY(id)
)

select * from ders 

insert into ders(ders_ad, vize, final) values ('Game Theory', 75, 95)

alter table ders add CONSTRAINT ders_no DEFAULT 'Ders Kayıt İşlemi Gerçekleşmedi' for ders_ad 

alter table ders drop CONSTRAINT ders_no