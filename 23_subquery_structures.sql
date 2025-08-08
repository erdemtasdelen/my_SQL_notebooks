select * from hasta where il_ID=1

select * from hasta where il_ID=(select il_ID from il where il_ID=1)

select il_ID from il where il_ID=1

select * from il




select * from hasta where hasta_Cinsiyet='e'

select * from hasta where hasta_Cinsiyet=(select distinct hasta_Cinsiyet from hasta where hasta_Cinsiyet='e')

select distinct hasta_Cinsiyet from hasta where hasta_Cinsiyet='e' --tekrarlı yapılardan kurtararak döndürdü 



--Acil servise gelen hasta bilgileri:
select * from Bolum

select hasta_Ad + ' ' + hasta_Soyad as 'Ad Soyad', hasta_TC, Bolum from hasta
inner join doktor on hasta.DoktorID=doktor.Doktor_ID
inner join Bolum on doktor.Bolum_ID=Bolum.Bolum_ID
where Bolum='Acil Servis'

--Besey Çamurcuoğlu	53767357293	Acil Servis
--Sernur Zorlu	65055819430	Acil Servis
--Altınçiçek Güçlü	38545808958	Acil Servis
--Akay Bilgin	27319101647	Acil Servis




--inner join yerine bu yapı da kullanılabilir ama main olarak inner join yapısını kullanmak daha kullanıslıdır.

select hasta_Ad + ' ' + hasta_Soyad as 'Ad Soyad', hasta_TC from hasta where 
DoktorID in (select Doktor_ID from doktor where Bolum_ID=(select Bolum_ID from Bolum where 
Bolum='Acil Servis'))






--istatistiklere bakarız bu yapıda

set STATISTICS time ON
SET STATISTICS IO ON

select hasta_Ad + ' ' + hasta_Soyad as 'Ad Soyad', hasta_TC, Bolum from hasta
inner join doktor on hasta.DoktorID=doktor.Doktor_ID
inner join Bolum on doktor.Bolum_ID=Bolum.Bolum_ID
where Bolum='Acil Servis'

--SQL Server Execution Times:
   --CPU time = 3 ms,  elapsed time = 3 ms.
--Total execution time: 00:00:00.008







set STATISTICS time ON
SET STATISTICS IO ON

select hasta_Ad + ' ' + hasta_Soyad as 'Ad Soyad', hasta_TC from hasta where 
DoktorID in (select Doktor_ID from doktor where Bolum_ID=(select Bolum_ID from Bolum where 
Bolum='Acil Servis'))


 --SQL Server Execution Times:
   --CPU time = 1 ms,  elapsed time = 0 ms.
--Total execution time: 00:00:00.022