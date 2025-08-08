select * from results

select SUBSTRING(customer_name, 1, 3) from results --1.karakterden baslayıp hepsinin ilk üç karakterini aldi

select SUBSTRING(customer_name, 2, 5) from results --2.karakterden baslayp ilk 5 karakteri aldi

select LEFT(customer_email, 2) from results --soldan baslayarak iki karakter aldık

select LEFT(customer_email, 5) as 'Soldan', RIGHT(customer_name, 5) as 'Sağdan' from results

