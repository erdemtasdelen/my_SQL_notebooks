--FULL BACKUP = Verinin tamamını yedekler ve kapladıgı yer cok büyüktür. Bir veri kaybında veri tabanının tamamını geri döndürebilir

--DIFFERENTIAL BACKUP = En son yapılan full backup ile ondan sonra devam ettigimiz kısım arasını yedekler. Daha az yer kaplar

--TRANSACTION LOG BACKUP = En son alınan back up(hepsi olabilir(full,diff,trans...)) ile o anda alınan back up arasındaki farkı yedekler.
--Saniye bazlı çalışır. adım adım back up yapmamızı saglar. Banka veri tabanları içib önemli bir back up yontemidir




create database yedek
use yedek


create table yedektablo(
id int IDENTITY(1,1) PRIMARY key,
ad varchar(15),
tarih datetime
)

insert into yedektablo values ('Erdem Tasdelen', GETDATE())

select * from yedektablo

--database icinden yedek'e sag click yaparsan back up seçenegini görürsün ona göre istedigin türde backupla..