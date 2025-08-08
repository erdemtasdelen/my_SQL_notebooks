select * from hasta
select * from doktor




--ilk sorgudaki hasta ad ve soyadı alığ olusturdu sonra doktoru da ekledi ve devam ettirdi 
--farklı tablolardakı toplam verileri bulmak istedigimizde union yapısını kullanabıliriz

select hasta_Ad as 'Ad', hasta_Soyad as 'Soyad' from hasta
union all
select dok_Ad, dok_Soyad from doktor







select hasta_Ad as 'Ad', hasta_Soyad as 'Soyad', DATEDIFF(year, hasta_DogumTarihi, GETDATE()) as 'Yaş'
from hasta

union all

select dok_Ad, dok_Soyad, DATEDIFF(year, dok_DogumTarihi, GETDATE()) as 'Yaş'
from doktor order by Yaş desc

