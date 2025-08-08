--select * from student

--where şart ...

--select * from student 
--where student_sex='erkek' and student_class='10B'

--select * from student
--where student_sex='kadın' and student_vaccine='var'


--select * from student 
--where student_sex='kadin' or student_class='10B'

select * from student
where student_sex='erkek' or student_class like '%b'