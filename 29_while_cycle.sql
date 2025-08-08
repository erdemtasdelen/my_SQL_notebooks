--while şart begin işlem end

declare @number INT
set @number=0
    while @number<=100
BEGIN
    print @number
set @number=@number+2
end
--> 0'dan 100e kadar tüm cift sayıları döndürdük





declare @sayı int, @toplam INT

set @sayı=1
set @toplam=0

while @sayı<=100

BEGIN
    set @toplam=@toplam + @sayı 
    set @sayı=@sayı+1
END
print @toplam

-->1den 100e kadar sayıları topladık ve sonuc 5050






declare @sayı int
set @sayı=0

while @sayı<=1000
BEGIN
    if @sayı%5=0
    BEGIN
        print '5 e Tam Bölünen Sayılar' + ' ' +cast (@sayı as varchar(25))
    END
    set @sayı=@sayı + 1
end

--5 e Tam Bölünen Sayilar 0
--5 e Tam Bölünen Sayilar 5
--5 e Tam Bölünen Sayilar 10
--5 e Tam Bölünen Sayilar 15 ... diye 5in katlarını aldık





select * from doktor

declare @hasta int, @doktor INT

set @hasta=0
set @doktor=(select MAX(doktor_ID) from doktor)

while @hasta <= @doktor

BEGIN

    print 'Hasta Kabul Edildi'

    set @hasta=@hasta + 1
    end
-->Hasta Kabul Edildi...
