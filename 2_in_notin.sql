--select * from student where student_class='10B' or student_sex='erkek'

--select * from student where columnname in/not in(değerler)

--select * from student where student_name in('Alara', 'erdem', 'cem')

--select * from student where student_number in (2027, 2023, 2028)

select * from student where student_number not in (2027, 2023, 2028)