select * from doktor
select * from hasta_verileri_1000
select * from il
select * from ilce
select * from ulke
select * from kurum
select * from Bolum


select * from hasta_verileri_1000 where KurumID=2
select * from kurum where Kurum_ID=2




ALTER TABLE doktor
ADD CONSTRAINT FK_Doktor_Bolum
FOREIGN KEY (Bolum_ID)
REFERENCES Bolum(Bolum_ID)




ALTER TABLE il
ADD CONSTRAINT FK_il_Ulke
FOREIGN KEY (Ulke_ID)
REFERENCES ulke(Ulke_ID)




ALTER TABLE hasta
ADD CONSTRAINT FK_hasta_Ulke
FOREIGN KEY (Ulke_ID)
REFERENCES ulke(Ulke_ID)

--SELECT DISTINCT Ulke_ID
--FROM hasta
--WHERE Ulke_ID NOT IN (SELECT Ulke_ID FROM ulke)

--DELETE FROM hasta
--WHERE Ulke_ID NOT IN (SELECT Ulke_ID FROM ulke)




ALTER TABLE doktor
ADD CONSTRAINT FK_doktor_Ulke
FOREIGN KEY (Ulke_ID)
REFERENCES ulke(Ulke_ID)




ALTER TABLE ilce
ADD CONSTRAINT FK_ilce_il
FOREIGN KEY (il_ID)
REFERENCES il(il_ID)





ALTER TABLE hasta
ADD CONSTRAINT FK_hasta_il
FOREIGN KEY (il_ID)
REFERENCES il(il_ID)





ALTER TABLE doktor 
ADD CONSTRAINT FK_doktor_il
FOREIGN KEY (il_ID)
REFERENCES il(il_ID)




ALTER TABLE hasta
ADD CONSTRAINT FK_hasta_ilce
FOREIGN KEY (ilce_ID)
REFERENCES ilce(ilce_ID)

--SELECT DISTINCT ilce_ID
--FROM hasta
--WHERE ilce_ID NOT IN (SELECT ilce_ID FROM ilce)

--DELETE FROM hasta
--WHERE ilce_ID NOT IN (SELECT ilce_ID FROM ilce)




ALTER TABLE doktor
ADD CONSTRAINT FK_doktor_ilce
FOREIGN KEY (ilce_ID)
REFERENCES ilce(ilce_ID)




ALTER TABLE hasta
ADD CONSTRAINT FK_hasta_kurum
FOREIGN KEY (Kurum_ID)
REFERENCES kurum(Kurum_ID)

--select distinct Kurum_ID
--from hasta 
--where Kurum_ID not in (select Kurum_ID from kurum)

--delete from hasta 
--where Kurum_ID not in (select Kurum_ID from kurum)


ALTER TABLE hasta
ADD CONSTRAINT FK_hasta_KanGrubu
FOREIGN KEY (Kan_ID)
REFERENCES KanGrubu(Kan_ID)





select * from hasta 
select * from Kurum


select * from hasta where Kurum_ID=1 --hastalardan  kurum_IDsi bir olanları cagırdık ve
select * from kurum where Kurum_ID=1 --kurum_IDsi 1 olan kurumu cagırdık



--select*from tablo1 join tablo2 on tablo1.ilişki=tablo2.ilişki



select * from hasta join kurum on hasta.Kurum_ID=kurum.Kurum_ID --aynı tabloda kurum IDlere karsılık gelen kurumları yazdırdık





select * from doktor
select * from Bolum


select * from doktor inner join Bolum
on doktor.Bolum_ID=Bolum.Bolum_ID


select Ad, Soyad, Bolum from doktor inner JOIN bolum
on doktor.Bolum_ID=Bolum.Bolum_ID --doktor ad soyad ve bölümünü getirdi --Ozlem Ihsanoglu Beyin ve Sinir Cerrahisi gibi gibi...


select Ad + ' ' + Soyad as Ad_Soyad, Bolum, Email from doktor --ad ve soyadı tek columna yazdık ad+''+soyad as ... diyerek
inner join Bolum on doktor.Bolum_ID=Bolum.Bolum_ID







