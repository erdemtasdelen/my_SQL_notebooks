select PI() --3,141592653589793

select count(*) from hasta --25 tane satır var 

select len('Erdem Tasdelen') --14 







--create function isim(parametre tanımla) returns veri tipi as kod...
--dbo=şema yapısıdır..

create FUNCTION dbo.toplama(@x as int, @y as int)
returns int 
as
begin
    declare @sonuc as int
    set @sonuc= @x + @y
    return @sonuc
end


select dbo.toplama(988,424) --1412
select dbo.toplama(9234488,422134) --9656622





select * from hasta

select hasta_Ad + ' ' + hasta_Soyad as 'Hasta Ad Soyad', DATEDIFF(YEAR, hasta_DogumTarihi, GETDATE())
as 'Hastanın Yaşı' from hasta
--SQLin kendi fonksiyonuyla yas hesapladık


select hasta_Ad + ' ' + hasta_Soyad as 'Hasta Ad Soyad', dbo.yashesap(hasta_DogumTarihi) as 'Hasta Yaş'
from hasta order by [Hasta Ad Soyad]
--kendi fonksiyonumuzla yas hesapladık






CREATE FUNCTION dbo.yashesap(@dogumtarihi as date)
returns int
as
BEGIN
    declare @sonuc as INT
    set @sonuc=DATEDIFF(year, @dogumtarihi, GETDATE())
    return @sonuc
end

select dbo.yashesap('1990-05-21') --35 (yaş bulduk fonksiyonla)
select dbo.yashesap('1890-02-21') --135

