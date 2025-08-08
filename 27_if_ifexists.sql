--if kosul begin sonuc end else begin sonuc2 


declare @sayı int
    set @sayı=100

    if @sayı=100
    begin
    print 'Sayı Değeri 100'
END
    ELSE
begin
    print 'Sayı Değeri 100 Değildir'
END --Sayi Degeri 100



declare @sayı int
    set @sayı=190

    if @sayı=100
    begin
    print 'Sayı Değeri 100'
END
    ELSE
begin
    print 'Sayı Değeri 100 Değildir'
END --Sayi Degeri 100 Degildir





declare @kadın float, @erkek float, @sonuc FLOAT

set @kadın=(select count(hasta_Cinsiyet) from hasta where hasta_Cinsiyet='K')
set @erkek=(select count(hasta_Cinsiyet) from hasta where hasta_Cinsiyet='E')

set @sonuc=(@kadın/(@kadın+@erkek))

if @sonuc>=0.5
BEGIN
    print 'Kadın Hasta Oranı %50den büyüktür.'

    END
else
 print 'Kadın Hasta Oranı %50den küçüktür'

 --Kadin Hasta Orani %50den büyüktür.






select * from hasta

if exists (select * from hasta where hasta_TC=65831173963)

print 'Kayıt Var'
ELSE
    print 'Kayıt Yok'  --Kayit Var



if exists (select * from hasta where hasta_TC=658311739100)

print 'Kayıt Var'
ELSE
    print 'Kayıt Yok'  --Kayit Yok








if exists (select * from hasta where hasta_TC=97237820706)

begin
    update hasta set hasta_TC=97237820100 where hasta_TC=97237820706
    END
else 
    BEGIN

    print 'Kayıt Bulunamadı'
END


select * from hasta  --97237820100   üsttteki fonksıyonla tek TCnoyu degistirdik