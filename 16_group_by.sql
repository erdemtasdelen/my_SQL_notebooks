select * from results

select sum(total_price) as 'Toplam Ciro' from results --45644332,19000017

select sum(total_price) as 'Automotive Cirosu' from results where category='Automotive' --2462595,590000001

select category, sum(total_price) as 'Kategori Bazlı Ciro' from results group by category --her kategorinin kendi cirosunu bulduk

select payment_method, sum(total_price) as 'Ödeme Yöntemi Bazlı Ciro' from results group by payment_method --aynı şekilde but according to payment method

select product, sum(total_price) as 'Ürün Bazlı Ciro' from results group by product --profit, according to product

select year(purchase_date) as Yıl, sum (total_price) as 'Yıllık Ciro' from results group by (purchase_date) --yıllık bazlı cirolar

select product, sum(total_price) as 'Toplam Ciro' from results group by product order by sum(total_price) asc

select product, sum(total_price) as 'Toplam Ciro' from results group by product order by sum(total_price) desc --ürün bazında toplam ciroyu büyükten kücüge sıraladık

select customer_city, count(distinct customer_name) as 'Tekil Müşteri Sayısı' from results group by customer_city order by count(distinct customer_name) desc

select payment_method, count(distinct customer_age) as 'Tekil Ödeme Methodu Sayısı' from results group by payment_method order by count(distinct customer_age) desc