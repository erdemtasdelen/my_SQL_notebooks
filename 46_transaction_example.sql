create database para
use para





create table atm(
    kisi_id int IDENTITY(1,1) PRIMARY KEY,
    ad_soyad varchar(35)
)

insert into atm values ('Erdem Tasdelen'),('Charlie XCX')
select*from atm






create table hesap(
hesap_id int IDENTITY(1,1) PRIMARY KEY,
kisi_id int,
hesap_no varchar(30)
)

insert into hesap values (1,'94847596031'),(2,'00003748921')
select*from hesap








create table bakiye(
    bakiye_id int IDENTITY(1,1) PRIMARY KEY,
    hesap_id int,
    bakiye float
)

insert into bakiye values (1,1000),(2,5000)
SELECT*FROM bakiye








CREATE table hareket(
    hareket_id int IDENTITY(1,1) PRIMARY KEY,
    hesap_id INT,
    hareket int,
    miktar FLOAT,
    tarih datetime
)







create table harekettip(
    tip_id int IDENTITY(1,1) PRIMARY KEY,
    tip varchar(20)
)
 
insert into harekettip values ('Para Gönderme'),('Para Gelişi')
select * from harekettip





select * from atm
select * from hesap
select * from bakiye
select * from hareket
select * from harekettip



alter table hareket
add CONSTRAINT FK_hareket_hesap
FOREIGN KEY (hesap_id) REFERENCES hesap(hesap_id)

alter table bakiye
add CONSTRAINT FK_bakiye_hesap
FOREIGN KEY (hesap_id) REFERENCES hesap(hesap_id)

alter table hesap
add CONSTRAINT FK_hesap_atm
FOREIGN KEY (kisi_id) REFERENCES atm(kisi_id)

alter table hareket
add CONSTRAINT FK_hareket_harekettip
FOREIGN KEY (hareket) REFERENCES harekettip(tip_id)




select ad_soyad as 'Ad Soyad', hesap_no as 'Hesap Numarası', bakiye as 'Bakiye' from atm

inner join hesap on atm.kisi_id=hesap.kisi_id
inner join bakiye on hesap.hesap_id=bakiye.hesap_id

insert into hareket values(1,1,1000,GETDATE())

update bakiye set bakiye=0 where bakiye_id=1

insert into hareket values(2,2,1000,GETDATE())

update bakiye set bakiye=3000 where bakiye_id=2






--elimizle tabloyu eski haline döndürdük
TRUNCATE table hareket

update bakiye set bakiye=1000 where bakiye_id=1
update bakiye set bakiye=2000 where bakiye_id=2






--transaction yapısı. hata varsa bul çöz devam et. geriye çevir.


begin TRAN

insert into hareket values(1,1,1000,GETDATE())

if @@ERROR>0

BEGIN
    
    ROLLBACK TRAN
    RETURN
END

update bakiye set bakiye=0 where bakiye_id=1

if @@ERROR>0

BEGIN
    
    ROLLBACK TRAN
    RETURN
END

insert into hareket values(2,2,1000,GETDATE())

if @@ERROR>0

BEGIN
    
    ROLLBACK TRAN
    RETURN
END

update bakiye set bakiye=3000 where bakiye_id=2

if @@ERROR>0

BEGIN
    
    ROLLBACK TRAN
    RETURN
END

COMMIT TRAN --işlemi gerçekleştir demek.





select * from atm
select * from hesap
select * from bakiye
select * from hareket
select * from harekettip