select*from hasta


create function dbo.bilgi(@hasta int)
returns TABLE
AS
return
(select hasta_Ad, hasta_Soyad, hasta_TC, hasta_DogumTarihi, hasta_Email, hasta_Telefon
from hasta where @hasta=hasta_ID)

select * from dbo.bilgi(82)
--Salkın	Akar	65831173963	1927-07-27	yurtseven99@anadolu.biz	5477081550




select * from doktor




create function dbo.bilgi2(@bolum varchar(25))
returns TABLE
as
RETURN
(select hasta_Ad + ' ' + hasta_Soyad as 'Hasta Ad Soyad', hasta_TC as 'Hasta TC',
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

where @bolum=Bolum
)

select * from Bolum

select * from dbo.bilgi2('Acil Servis')
--Besey Çamurcuoğlu	53767357293	E	1983-08-15	chancer@yaman.com	5913586784	North Rüşen	Sezer Corners	0 Rh+	Poliklinik	Gülel Durmus	sahil58@anadolu.com	51857681879	Acil Servis



