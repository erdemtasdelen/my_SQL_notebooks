select * from satıs 
select * from stok





create table log_kayıt(
    satısid int,
    musteriadsoyad varchar(30),
    satınalınanürün int,
    adet int,
    log_olay varchar(20),
    log_zaman datetime,
    log_kullanıcı varchar(50),
    log_program varchar(50),
    log_pc varchar(50)
)

select * from log_kayıt



create trigger kayıtalma
on satıs
after update 
as 
begin 

insert into log_kayıt(
[satısid],[musteriadsoyad],[satınalınanürün],[adet],[log_olay],[log_zaman],[log_kullanıcı],[log_program],[log_pc]
)


select [satısid],[musteriadsoyad],[satınalınanürün],[adet], 'Güncelleme', GETDATE(),
SYSTEM_USER,PROGRAM_NAME(),HOST_NAME() from deleted

end





select * from satıs 
select * from stok
select * from log_kayıt

update satıs set adet=5 where satısid=1


--NEDEN CALISMIYOR ANLAMADIM SONRA TEKRAR DONERİM..