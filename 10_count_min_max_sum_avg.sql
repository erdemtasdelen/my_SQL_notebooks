select order_id from results

select customer_name from results 

select customer_age from results

select payment_method from results

select address from results

select customer_city from results

select product from results

select * from results

select count(distinct customer_city) as 'Toplam Şehir Sayısı' from results;       --toplam şehir sayısını söylüyor. (80)

select*from results where customer_city like 'A%'    --A harfiyle baslayan sehırleri filtreledik.

select * from results where customer_name like '%ez%'

select * from results where customer_city like 'A%'
select count(*) as 'A Harfi İle Başlayan Şehir Sayısı' from results where customer_city like 'A%'  -- a ile baslayan sehir sayısını verdi 1244 tane

select * from results

select count(*) as 'Müşteri Sayısı' from results -- 10000 müşteri var

select count (distinct product) as 'Ürün Sayısı' from results --toplam 80 farklı ürün var

select count(product) as 'Toplam Ürün Satırı' from results  --10000 toplam ürün satırı var

select * from results

select count(category) as 'Müzik Ürün Sayısı' from results where category='Music'   --512 müzik ürünü var

select * from results 
where total_price=(select min(total_price) from results) --en düşük ürün fiyatı ve bilgileri(60)

select * from results 
where total_price=(select max(total_price) from results) --en pahalı ürün ve bilgileri(14989,85)

select * from results 
where customer_age=(select min(customer_age) from results)

select * from results 
where unit_price=(select max(unit_price) from results)

select sum(quantity) as 'Satılan Yoga Mat Sayısı' from results where product='Yoga Mat' --401 adet yoga matı satılmıs

select sum(total_price) as 'Debit Card Toplam Ödeme' from results where payment_method='Debit Card'  --9023726,879999995 tl ödenmis

select sum(total_price) as 'PayPal Toplam Ödeme' from results where payment_method='PayPal' --9367321,929999996 tl ödeme

select sum(total_price) as 'Footwear Toplam Ciro' from results where category='Footwear' --2146807,579999998 tl ciro

select sum(total_price) as 'Manisa Toplam Ciro' from results where customer_city='Manisa'  --629851,8999999999 tl ciro



select avg(unit_price) as 'Yoga Mat Ortalama Fiyatı' from results where product='Yoga Mat'  --1625,7578225806456 ortalama ürün fiyatı

select avg(total_price) as 'Automotive Ortalama Ciro' from results where category='Automotive' --4681,740665399241 her satısta ortalama kazanılan para




