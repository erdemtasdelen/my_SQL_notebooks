--create database ornek_etic



create table kullanıcı(
    Kullanıcı_ID int identity(1,1) Not Null Primary Key,
    Kullanıcı_Adı varchar(30),
    Sifre varchar(15),
    Ad varchar(15),
    Soyad varchar(15),
    Cinsiyet varchar(1),
    Mail varchar(20),
    Dogum_tarihi date,
    Telefon varchar(15)
)



create table Adres(
    Adres_ID int identity(1,1) Not Null Primary Key,
    Ulke_ID int,
    Sehir_ID int,
    Ilce_ID int,
    Mahalle varchar(20),
    Postakod varchar(15),
    Kullanıcı_ID int
)



create table Ulke(
    Ulke_ID int identity(1,1) Not Null Primary Key,
    Ulke varchar(30)
)



insert into Ulke(Ulke)
values('Türkiye'),
('ABD'),
('Almanya'),
('Rusya'),
('İngiltere')




create table Sehir(
    Sehir_ID int identity(1,1) Not Null Primary Key,
    Ulke_ID int,
    Sehir varchar(30)
)



insert into Sehir(Ulke_ID, Sehir)
values(1, 'Ankara'),
(1, 'İstanbul'),
(2, 'NewYork'),
(3, 'Berlin'),
(4, 'Moskova'),
(5, 'Manchester'),
(5, 'Londra')




create table Ilce(
    Ilce_ID int identity(1,1) Not Null Primary Key,
    Sehir_ID int,
    Ilce varchar(30)
)



insert into Ilce(Sehir_ID, Ilce)
values(1, 'Çankaya'),
(2, 'Beşiktaş'),
(3, 'McLarens'),
(4, 'Kreutzberg'),
(5, 'StPetersburg'),
(6, 'Humber')



select*from Ulke
select*from Sehir
select*from Ilce

