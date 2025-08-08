select * from satıs
select * from stok
select * from urun



create trigger satıssil
on satıs
after delete
as 
BEGIN

declare @satınalınanürün int 
declare @adet int

select @satınalınanürün=satınalınanürün, @adet=adet from deleted 

update stok set stoksayisi=stoksayisi + @adet 
where  urunid=@satınalınanürün
end


delete from satıs where satısid=2

select * from satıs
select * from stok

