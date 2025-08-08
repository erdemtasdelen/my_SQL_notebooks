select customer_name, upper(customer_name) as 'Büyük Harf' from results

select customer_name, lower(customer_name) as 'Küçük Harf' from results

select customer_name, upper(customer_name) as 'Büyük Harf', lower(customer_name) as 'Küçük Harf' from results

select product, upper(product) as 'Büyük Harf' from results

select * from results

select LEN(customer_name) from results