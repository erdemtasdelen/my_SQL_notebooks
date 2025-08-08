select * from results

select dateadd(hour,3 ,getdate()) as 'Türkiye Saati' --2025-07-28 19:51:06.170

select datepart(year, '1991-05-07')  --1991

select datepart(year,getdate()) --2025

select datepart(quarter, getdate()) --3

select datepart(dayofyear, getdate()) --209.günü senenin



select * from results where datepart(year, purchase_date)=2024 --2024te alısveris yapan müsterileri gösterir

select * from results where datepart(year, purchase_date)=2025

select * from results where datepart(day, purchase_date)=31

select * from results where datepart(month, purchase_date)=12


