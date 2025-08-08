select * from hasta

--create view isim as select sorgu

create view ornekview as select * from hasta

select * from hasta

select * from ornekview 

create view ornekview2 as select * from hasta where hasta_Cinsiyet='E'



select * from ornekview2  --burası bir sanal tablo. tabloyu sanal olarak gosterir

select * from hasta where hasta_Cinsiyet='E'  -- bu gercek tabloyu calıstırır


--ornekview yapılarını kaldırmıs olduk
drop view ornekview
drop view ornekview2








select * from doktor


create view hastaview as 

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





select * from hastaview  --yukarıdakı tablo yapısını view koduyla cagırdık


select * from hastaview where [Hastanın Cinsiyeti]='E' --view yapısında yani sanal tablo yapısında köşeli parantez kullanarak şartı saglayıp gerceklestiriiriz


--sanal tabloda sadece gösterim yapabiliriz. sql yapısında degisiklik yapacagimiz degisken veya fonksiyonlar view yapısıyla calısmaz.

select [Hasta Ad Soyad], [Hasta TC], [Hasta Kan Grubu], 
[Doktor Ad Soyad], [Hastanın Başvurduğu Bölüm] from hastaview
--Salkın Akar	65831173963	AB Rh+	Ummahani Güçlü	Enfeksiyon Hastaliklari


