create database tetikleyici
 




create table urun(
    urunid int identity(1,1) primary key,
    urun varchar(15)
)

insert into urun values ('Buzdolabı'),('Ütü'),('Televizyon'),('Bilgisayar')

select * from urun








create table stok(
stokid int IDENTITY(1,1) primary key,
urunid INT,
stoksayisi int
)

insert into stok values(1,500),(2,300),(3,250),(4,150)

select * from stok








create table satıs(
satısid int IDENTITY(1,1) primary key,
musteriadsoyad varchar(30),
satınalınanürün int,
adet INT
)




SELECT 
    u.urun AS UrunAdi,
    s.stoksayisi AS MevcutStok,
    sa.musteriAdSoyad AS Musteri,
    sa.adet AS SatinAlinanAdet
FROM satıs sa
JOIN stok s ON sa.satınalınanürün = s.stokid
JOIN urun u ON s.urunid = u.urunid






--after veya for trigger
--instead of trigger

--create trigger isim on tabloisim trigger tipi(yapılacak işlem) as kod..


select * from satıs

select * from stok







create TRIGGER stok_urun
on satıs
after insert 
as
BEGIN

declare @satınalınanürün INT
declare @adet INT

select @satınalınanürün=satınalınanürün, @adet=adet from inserted

update stok set stoksayisi=stoksayisi-@adet
where urunid=@satınalınanürün

END






select * from satıs
select * from stok



insert into satıs values('Ahmet Can',1,5)
--stoksayisi tablosundan otomatik olarak 5 tane düştü ahmet can 5 adet aldıgı icin

insert into satıs values('Hasan Can',3,255)
--çok guzel bir sistem otomatık olarak stoksayisinden düşürüyor ürünıdsine göre
--satıs tablosuna da input olarak degeleri giriyor.