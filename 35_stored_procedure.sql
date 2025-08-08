--Ad-Hoc Sorgu Yapısı:

--1-Query
--2-Parse(Ayrıstırma)
--3-Optimize(SQL Minimum performansla yapıyı nasıl calıstırabilecegini hesaplıyor)
--4-Compile(Derleme)
--5-Execute(Çalıştırma)
--6-Result






--Stored Procedure:

--1-Parse
--2-Compile
--3-Execute





--create PROCEDURE isim as select sorgu
--procedure=proc





--execute veya exec
--drop
--alter


use hastane


select * from hasta where hasta_Cinsiyet='E'

create proc hastaproc as select * from hasta where hasta_Cinsiyet='E'

execute hastaproc 






create proc hastaproc2 as 
select hasta_Ad + ' ' + hasta_Soyad as 'Hasta Ad Soyad', hasta_TC as 'Hasta TC',
hasta_Cinsiyet as 'Hastanın Cinsiyeti', hasta_DogumTarihi as 'Hastanın Doğum Tarihi',
hasta_Email as 'Hastanın Mail Adresi', hasta_Telefon as 'Hastanın Telefon Numarası',
il as 'Hasta İl', ilce as 'Hasta İlçe', Kan_Grup as 'Hasta Kan Grubu', Kurum as 'Hastanın Kurumu',

dok_Ad + ' ' + dok_Soyad as 'Doktor Ad Soyad', dok_Email as 'Doktorun Mail Adresi',
dok_Telefon as 'Doktorun Telefon Numarası', Bolum as 'Hastanın Başvurduğu Bölüm' from hasta

inner join il on hasta.il_ID=il.il_ID
inner join ilce on hasta.ilce_ID=ilce.ilce_ID
inner join KanGrubu on hasta.Kan_ID=KanGrubu.Kan_ID
inner join kurum on hasta.Kurum_ID=kurum.Kurum_ID
inner join doktor on hasta.DoktorID=doktor.Doktor_ID
inner join Bolum on doktor.Bolum_ID=Bolum.Bolum_ID
GO

exec hastaproc2   --bu yapıyı farklı bir programlama dilinde de cagirabiliriz.
--network trafik yogunlugunu azaltan bir yapıdır. 

drop proc hastaproc
drop proc hastaproc2





select * from doktor

create proc doktorproc
@cins varchar(1)='K'
as 
    select dok_Ad + ' ' + dok_Soyad as 'Doktor Ad Soyad', dok_TCKimlik as 'Doktor Tc NO' from doktor
    where dok_Cinsiyet=@cins
    order by [Doktor Ad Soyad]


exec doktorproc --Adviye Yildirim	89894400235

drop proc doktorproc


