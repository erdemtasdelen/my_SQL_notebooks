select * from satıs
select * from stok

create trigger guncelleme 
on satıs 
after update 
as 
begin 
declare @satınalınanürün INT
declare @adet INT
declare @yeni INT

select @satınalınanürün=satınalınanürün, @adet=adet from deleted
select @satınalınanürün=satınalınanürün, @yeni=adet from inserted

    update stok set stoksayisi=stoksayisi+(@adet-@yeni)
    where urunid=@satınalınanürün
end


select * from satıs
select * from stok

update satıs set adet=6 where satısid=1  --hem satıs tablosunda adet degisiyor ve buna baglantılı sekılde stoksayısı da stok tablosunda degisiyor


select * from satıs
select * from stok



