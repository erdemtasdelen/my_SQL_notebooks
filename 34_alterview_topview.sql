select * from hasta




create view hastaview2 as 

select top 25 hasta_Ad + ' ' + hasta_Soyad as 'Hasta Ad Soyad' from hasta order by [Hasta Ad Soyad] --alfabetik sıraladık

select * from hastaview2





alter view hastaview2 as 

select top 15 hasta_Ad + ' ' + hasta_Soyad as 'Hasta Ad Soyad' from hasta order by [Hasta Ad Soyad]

select * from hastaview2
