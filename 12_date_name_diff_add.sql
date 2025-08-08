select * from results



select DATEDIFF(YY, '1948-04-25', '1975-05-12') --27
select DATEDIFF(DD, '2001-03-30', GETDATE()) --8886 gündür yaşıyorum ammmmkkk
select DATEDIFF(DD, purchase_date, GETDATE()) as 'Satın Alınan Günün Üzerine Kaç Gün Geçmiş?' from results



select DATENAME(dw, getdate()) --monday
select DATENAME(mm, getdate()) --july



select DATEADD(yy, 2, getdate()) --2027-07-28 17:30:06.647
select DATEADD(mm, 2, getdate()) --2025-09-28 17:30:27.097

select * from results