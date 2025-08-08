--Hasta ad, soyad, cinsiyet, tc, yaş, mail, tel, il, ilçe, kan grubu, kurum, doktor bilgileri:
select * from hasta
select * from doktor
select * from Bolum


select Ad + ' ' + Soyad as Hasta_Ad_Soyad, hasta_TC, hasta_Cinsiyet, DATEDIFF(YEAR, hasta_DogumTarihi, GETDATE()) as Hasta_Yas, 
hasta_Email, hasta_Telefon, il, ilce, Kan_Grup, Kurum, Ad + ' ' + Soyad as Doktor_Ad_Soyad, dok_Telefon, dok_Email, Bolum from hasta 

inner join il on hasta.il_ID=il.il_ID
inner join ilce on hasta.ilce_ID=ilce.ilce_ID
inner join KanGrubu on hasta.Kan_ID=KanGrubu.Kan_ID
inner join Kurum on hasta.Kurum_ID=kurum.Kurum_ID
inner join doktor on hasta.Doktor_ID=doktor.Doktor_ID
inner join Bolum on doktor.Bolum_ID=Bolum.Bolum_ID




SELECT
    h.hasta_Ad + ' ' + h.hasta_Soyad AS Hasta_Ad_Soyad,
    h.hasta_TC AS Hasta_TC,
    h.hasta_Cinsiyet AS Hasta_Cinsiyet,
    DATEDIFF(YEAR, h.hasta_DogumTarihi, GETDATE()) AS Hasta_Yas,
    h.hasta_Email AS Hasta_Email,
    h.hasta_Telefon AS Hasta_Telefon,
    il.IlAdi AS il,
    ilce.IlceAdi AS ilce,
    kg.Kan_Grup AS Kan_Grup,
    k.kurum AS Kurum,
    d.dok_Ad + ' ' + d.dok_Soyad AS Doktor_Ad_Soyad,
    d.dok_Telefon AS Doktor_Telefon,
    d.dok_Email AS Doktor_Email,
    b.Bolum AS Bolum
FROM dbo.hasta h
INNER JOIN dbo.il il ON h.il_ID = il.il_ID
INNER JOIN dbo.ilce ilce ON h.ilce_ID = ilce.ilce_ID
INNER JOIN dbo.KanGrubu kg ON h.Kan_ID = kg.Kan_ID
INNER JOIN dbo.kurum k ON h.Kurum_ID = k.kurum_ID
INNER JOIN dbo.doktor d ON h.DoktorID = d.Doktor_ID
INNER JOIN dbo.Bolum b ON d.Bolum_ID = b.Bolum_ID



