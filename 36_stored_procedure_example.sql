--15.000 öğrenci
--3 öğün yemek
--veri tabanında 15.000 x 3 = 45.000 günlük hareket
--45.000 x 30 = 1.350.000 aylık hareket
--1.350.000 x 12 = 16.200.00 yıllık hareket


--1-Kartı okutma
--2-Kart sisteme kayıtlı mı?
--3-Tanımlı değilse hata ver
--4-Tanımlı ise girişe izin ver



create database yemek
use yemek


create table ogrenci(
    ogrenci_ID int identity(1,1) primary key,
    ogrenci_Ad varchar(15),
    ogrenci_Soyad varchar(15)
)

insert into ogrenci
values('Erdem','Hurşut'),('Mustafa','Can')

select * from ogrenci






create table kart(
    kart_no int identity(1,1) primary key,
    kart_numarası varchar(11)
)

insert into kart 
values('1A-4568-787'),('1A-5879-368')

select * from kart





create table karthareket(
    hareket_ID int identity(1,1) primary key,
    kart_no int,
    kart_tarih DATETIME
)

insert into karthareket
values(1, '2021-03-05 07:11:25'),(2,'2021-03-05 07:20:55'),
(1, '2021-03-05 12:13:48'),(2,'2021-03-05 12:21:41'),
(1, '2021-03-05 17:18:25'),(2,'2021-03-05 17:20:55')

select * from karthareket



--bu satır her kart_hareket satırının geçerli bir karta bağlı olmasını sağlar. yani sisteme bagımsız bir hareket kaydedilmez
alter table karthareket
add CONSTRAINT FK_karthareket_kart
FOREIGN KEY (kart_no)
REFERENCES kart(kart_no)





ALTER TABLE kart
ADD ogrenci_id INT
ALTER TABLE kart
ADD CONSTRAINT FK_kart_ogrenci
FOREIGN KEY (ogrenci_id) REFERENCES ogrenci(ogrenci_id)








select*from ogrenci
select*from kart
select * from karthareket


select ogrenci_Ad + ' ' + ogrenci_Soyad as 'Öğrenci Ad Soyad', kart_numarası as 'Kart No',
kart_tarih as 'Kart Hareket' from ogrenci

inner join kart on ogrenci.ogrenci_ID=kart.kart_no
inner join karthareket on kart.kart_no=karthareket.kart_no

order by [Öğrenci Ad Soyad]




alter proc kayıtkontrol 
@kartnumarası as varchar(11)

as 
    BEGIN
        if exists (select * from kart where kart_numarası=@kartnumarası)
    
    BEGIN
        select 'Kart Okutuldu, Teşekkürler'
    END
    ELSE

    BEGIN

    RAISERROR ('Geçersiz Bir Kart Okutmaya Çalıştınız Lütfen Kontrol Ediniz !',16,1)

    END
END

select * from kart



exec kayıtkontrol @kartnumarası='1A-4568-787' --Kart Okutuldu, Tesekkürler

exec kayıtkontrol @kartnumarası='1B-4568-787' --Geçersiz Bir Kart Okutmaya Çalistiniz Lütfen Kontrol Ediniz !


exec kayıtkontrol @kartnumarası='1A-4568-787'

exec kayıtkontrol @kartnumarası='1B-4568-787' --RaiseError ile yenıledik. alter ile yenıledik.(createyi silip)

