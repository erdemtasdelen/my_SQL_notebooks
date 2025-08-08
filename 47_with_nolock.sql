use para

select * from hareket 
select * from bakiye


begin TRAN

insert into hareket values(1,1,1000,GETDATE())

update bakiye set bakiye=0 where bakiye_id=1

insert into hareket values(2,2,1000,GETDATE())

update bakiye set bakiye=3000 where bakiye_id=2


--ben bu veri setinde transaction baslattım ama bitirmedim ornegin bakiye hesaplanması devam ediyor diyelim bu durumda 
--dısarıdan bu datasete baglanan kişi bu datasette işlem yapamaz cünkü hala burada transaction işlemi açık
--bu durumda işlem yapaibilmek adına 'NOLOCK' işlemi açarsak diger databasede işlem yapmaya devam edilir. for example:

select * from bakiye --bunu baska queryde calıstırdıgımda sonuc döndürmez

select * from bakiye with (NOLOCK) --bu sekılde calıstırırsak işlem yapmaya devam edebiliriz