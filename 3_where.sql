--select * from student where student_name='Alara'

--select * from student where student_sex='Erkek'

--<> eşit deeğildir
--> büyüktür < kücüktür
-- <=küçük eşit >= büyük eşittir
--between
--like 

--select * from student

--select * from student where student_sex<>'Erkek'

--select * from student where student_birth_date<'2000-05-12'

--select * from student where student_birth_date between '1999-01-01' and '2000-01-01'

--select * from student where student_sex like 'e%'

--select * from student where student_sex like '%n'

select * from student where student_name like '%em%'