--declare @degisken ismi degisken tipi
--set @degisken=deger ataması 
--select @degisken


declare @x INT
set @x=12
select @x as 'Değer'  --=12 döndürür




declare @x int, @y INT
set @x=12
set @y=6
select @x+@y as 'Değer'  --=18 döndürür




declare @isim varchar(10), @soyisim varchar(10)
set @isim='Erdem'
set @soyisim='Tasdelen'
select @isim + ' ' + @soyisim as 'İsim Soyisim'  --=Erdem Tasdelen döndürür





declare @sayı1 int, @sayı2 int, @carpım INT
set @sayı1=5
set @sayı2=44
set @carpım=@sayı1*@sayı2
select @carpım   --=220 döndürür




declare @midterm int, @final int, @sonuc int
set @midterm=70
set @final=90
set @sonuc=(@midterm*0.4+@final*0.6)
select @sonuc   --=82 döndürür






--sistem günlük 50 hasta kabul etsin senaryosunda data setimizde 25 hastamız kayıtlı o yuzden kalan kayıt sayımızı 25 olarak döndürür
select * from hasta

declare @kalan INT
set @kalan=50-(select COUNT(hasta_id) from hasta)
select @kalan as 'Kalan Kayıt Sayısı'




select @@CONNECTIONS
select @@CPU_BUSY
select @@VERSION  --Microsoft SQL Server 2019 (RTM-CU32-GDR) (KB5058722) - 15.0.4435.7 (X64)  	Jun  9 2025 18:36:12  	Copyright (C) 2019 Microsoft Corporation 	Developer Edition (64-bit) on Linux (Ubuntu 20.04.6 LTS) <X64>
select @@SERVERNAME --15ec0631ac6e

