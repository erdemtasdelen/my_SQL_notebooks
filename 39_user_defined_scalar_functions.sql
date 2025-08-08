select*from hasta

select hasta_Ad + ' ' + hasta_Soyad as 'Hasta Ad Soyad' from hasta order by [Hasta Ad Soyad]

create FUNCTION dbo.birlestir(@ad varchar(15), @soyad varchar(15))
returns varchar(35)
as
BEGIN
    return @ad+space(1)+@soyad 
end



select dbo.birlestir('Erdem','Tasdelen') as 'Birlestirme İslemi'  --Erdem Tasdelen
select dbo.birlestir(hasta_Ad, hasta_Soyad) as 'Hasta Ad Soyad' from hasta order by [Hasta Ad Soyad]

drop function dbo.birlestir






create function dbo.ayadi(@ay int)
returns varchar(20)
as 
begin 
return(
select case @ay
when 1 then 'Ocak'
when 2 then 'Şubat'
when 3 then 'Mart'
when 4 then 'Nisan'
when 5 then 'Mayıs'
when 6 then 'Haziran'
when 7 then 'Temmuz'
when 8 then 'Ağustos'
when 9 then 'Eylül'
when 10 then 'Ekim'
when 11 then 'Kasım'
when 12 then 'Aralık'
else 'Tanımsız Ay'
end)
END

select dbo.ayadi(12) --Aralik
select dbo.ayadi(15) --Tanimsiz Ay
select dbo.ayadi(1) --Ocak



select hasta_Ad + ' ' + hasta_Soyad as 'Hasta Ad Soyad',
dbo.ayadi(DATEPART(month, hasta_DogumTarihi)) as 'Hastanın Doğduğu Ay'
from hasta order by [Hasta Ad Soyad] 

--Akalan İhsanoğlu	Temmuz
--Akay Bilgin	Nisan