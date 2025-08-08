create database kısıtlayıcı
use kısıtlayıcı






--kısıtlayıcı koyarak id'yi primary key yaptım
create table il(
    id int IDENTITY(1,1),
    il varchar(15),
    CONSTRAINT pk_il PRIMARY KEY(id)
)






--tabloyu sonradan desing kısmı üstünde primary key yaptık
alter table il add CONSTRAINT il_id PRIMARY KEY(id)

insert into il values ('Ankara'), ('İstanbul'),('İzmir')

select * from il





--database diagram muhabbetini constraints kullanarak yaptim.
create table ad_bilgisi(
    id int IDENTITY(1,1),

    ad varchar(15),

    il int,

    CONSTRAINT ad_id PRIMARY KEY(id),
    CONSTRAINT id_id2 FOREIGN KEY(il) REFERENCES il(id)
)

insert into ad_bilgisi values ('Ahmet',1),('Ali',3),('Ayse',2)

select * from ad_bilgisi

--database diagram muhabbetini sadece bunları yaparak da halledebiliyoruz.







select ad, il.il from ad_bilgisi inner join il on il.id=ad_bilgisi.il
--Ahmet	Ankara
--Ali	Izmir
--Ayse	Istanbul


--primary key ve foreing keyler birer kısıtlayıcıdır. 
--primary key birincil anahtardır. Foreing key ise ilişkisel yapıyı kurgulayabilmek için kullandıgımız bir yapıdır.


