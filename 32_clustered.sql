create database indexornek

create table ornek(
    ID int identity(1,1), Kisi varchar(15)
)


 



declare @sayı int 
    set @sayı=1
while @sayı<100
BEGIN
insert into ornek 
    select 'Kişi' + ' ' + cast(@sayı as varchar(15))
    set @sayı=@sayı + 1
END
--1604506 rows affected. 5000000 veri çekecektik de o kadara gerek yok


select * from ornek


sp_spaceused 'ornek'     --47176 KB

set STATISTICS io ON
    select * from ornek where ID=1000000    --Kisi 1000000

    
create clustered index xx
on ornek(ID)
set STATISTICS io ON
    select * from ornek where ID=1000000

--indexli tarama yapaarsan cok daha az kb ile tarama yapabilirsin.