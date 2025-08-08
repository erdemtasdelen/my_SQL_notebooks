--IIF(mantıksal sınama, Dogru, Yanlıs)

--select IFF(1>1, 'Doğru', 'Yanlış')





declare @isim1 varchar(10), @isim2 varchar(10)
    set @isim1='Erdem'
    set @isim2='Tasdelen'

    select IIF(len(@isim1)>len(@isim2), 'Uzun', 'Kısa') as 'Karakter Uzunluğu Sonucu'
--Kısa



declare @isim1 varchar(10), @isim2 varchar(10)
    set @isim1='Erdemaliorkutlud'
    set @isim2='Tasdelen'

    select IIF(len(@isim1)>len(@isim2), 'Uzun', 'Kısa') as 'Karakter Uzunluğu Sonucu'
--Uzun






select * from hasta

select hasta_Ad + ' ' + hasta_Soyad as 'Ad Soyad',
Cinsiyet=IIF(hasta_Cinsiyet='E', 'Erkek', 'Kadın') from hasta order by [Ad Soyad]





