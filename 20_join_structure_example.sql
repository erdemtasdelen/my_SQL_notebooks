--A rh+ ve B rh- hastaların ad soyad ve cinsiyet bilgileri:
select * from hasta 
select * from KanGrubu

select Ad + ' ' + Soyad as Ad_Soyad, Cinsiyet, Kan_Grup from hasta
inner join KanGrubu on hasta.Kan_ID=KanGrubu.Kan_ID where Kan_Grup='A Rh+' or Kan_Grup='B Rh-'
order by Ad_Soyad





--Devlet hast, üniversite hast, 60 yaş üzeri erkek ad soyad tc ve kimlik bilgileri:
select * from hasta
select * from kurum

select Ad + ' ' + Soyad as Ad_Soyad, TC, Cinsiyet, DATEDIFF(YEAR, DogumTarihi, GETDATE()) as Yas,
kurum from hasta inner join kurum on hasta.Kurum_ID=kurum.Kurum_ID where Cinsiyet='E' and DATEDIFF(YEAR, DogumTarihi, GETDATE())>=60 and
(kurum='Devlet Hastanesi' or kurum='Üniversite Hastanesi') order by Ad_Soyad
--Özerdinç Akçay	40864268053	E	92	Devlet Hastanesi diye outputumuzu aldık




--Bölümlere göre doktorların yaş ortalaması:
select * from doktor
select * from Bolum

select Bolum, CEILING(AVG(DATEDIFF(YEAR, DogumTarihi, GETDATE()))) as Yas_Ortalaması from 
doktor inner join Bolum on doktor.Bolum_ID=Bolum.Bolum_ID group by Bolum order by Yas_Ortalaması DESC
--Beyin ve Sinir Cerrahisi	57
--Anesteziyoloji	55
--Çocuk Sagligi ve Hastaliklari	50
--Dahiliye (Iç Hastaliklari)	50
--Dermatoloji (Cildiye)	50
--Endokrinoloji	50
--Acil Servis	48
--Çocuk Cerrahisi	48
--Fizik Tedavi ve Rehabilitasyon	46
--Enfeksiyon Hastaliklari	42





