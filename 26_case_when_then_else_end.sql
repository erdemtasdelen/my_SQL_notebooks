--select sütunadı, case şart sütunu when then şart saglanırsa bu işlemi yap else şu işlemi yap end

select hasta_Cinsiyet,
    case hasta_Cinsiyet
        when 'E' then 'Erkek'
        when 'K' then 'Kadın'
    end as 'Cinsiyet'
    from hasta





--yaşı 60 üzeri olan=yüksek riskli, 50-59 arası orta risk, 50 altındakiler düşük riskli

select hasta_Ad + ' ' + hasta_Soyad as 'Ad Soyad', hasta_TC, hasta_Telefon,
    case 

    when DATEDIFF(year, hasta_DogumTarihi, GETDATE())>=60 then 'Yüksek Riskli'
    when DATEDIFF(year, hasta_DogumTarihi, GETDATE()) between 50 and 59 then 'Orta Riskli'
        else 'Düşük Riskli'

        end as 'Risk Tablosu'

        from hasta order by [Risk Tablosu] desc




--Acil Servis, Genel cerrahi=yüksek riskli , digerleri orta riskli

select * from Bolum

select dok_Ad + ' ' + dok_Soyad as 'Doktor Ad Soyad', Bolum,
    case 

    when Bolum='Acil Servis' then 'Yüksek Riskli'
    when Bolum='Genel Cerrahi' then 'Yüksek Riskli'
        else 'Orta Riskli'

        end as 'Risk Tablosu'

        from doktor
        inner join Bolum on doktor.Bolum_ID=Bolum.Bolum_ID order by Bolum

