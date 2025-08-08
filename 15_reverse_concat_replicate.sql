select * from results

select REVERSE('Ankara') --araknA

select REVERSE(customer_city) AS 'Tersten Yazma' from results

select CONCAT(customer_name, ',',' ',customer_age, ' ', 'Yaşındadır') as 'Müşteri Yaşı' from results --Mr. Thomas Mann, 69 Yasindadir

select CONCAT(product, ',',' ', payment_method, ' ', 'İle Ödenmiştir') as 'Ürün ve Ödeme Tipi' from results  --Tire Cleaner, PayPal Ile Ödenmistir

select REPLICATE('Ankara', 5) --AnkaraAnkaraAnkaraAnkaraAnkara

select REPLICATE('*', 5) --***** bu sekılde gizleme yapilabilir.

select LEFT(customer_email,4)+REPLICATE('*', 7) from results --jime******* gibi gizledim maili

