select * from satıs
select * from stok



create TRIGGER yasak 

on satıs 

instead of DELETE 
as 
begin 

RAISERROR('Bu Tablo Üzerinde Silme Yetkiniz Yoktur',16,1)

end

delete from satıs where satısid=1
--Msg 50000, Level 16, State 1, Procedure yasak, Line 10. Bu Tablo Üzerinde Silme Yetkiniz Yoktur 






select * from urun

create TRIGGER yasak2

on urun

instead of insert
as 
begin 

RAISERROR('Bu Tabloda Veri Giriş Yetkiniz Yoktur',16,1)

end

insert into urun values ('Led Lamba')
--Msg 50000, Level 16, State 1, Procedure yasak2, Line 9. Bu Tabloda Veri Giriş Yetkiniz Yoktur


drop trigger yasak

drop trigger yasak2

