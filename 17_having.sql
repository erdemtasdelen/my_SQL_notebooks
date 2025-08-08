select * from results

select * from results where customer_city='Istanbul' --Istanbulları getirdi

select customer_city, count(*) as 'Müşteri Sayısı' from results group by customer_city having count(*) >=5

select customer_city, sum(total_price) as 'Toplam Ciro' from results group by customer_city having sum(total_price) > 10000 --şehirlere göre toplam cironun 10000den fazla oldugu rowlar

select category, avg(total_price) as 'Ortalama Fiyat' from results group by category having avg(total_price) >500 --ort fiyatı 500den büyük olan kategoriler

select product, count(*) as 'Satış Miktarı' from results group by product having count(*)>50  --50den fazla satılan ürünler

select year(purchase_date) as 'Yıl', sum(total_price) as 'Toplam Ciro' from results group by year(purchase_date) having year(purchase_date) in (2024,2025) --yıl bazlı toplam ciro miktarı

