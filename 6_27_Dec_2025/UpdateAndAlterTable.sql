I have table and i want to add new column into table with the name student_LastName
into tbl_Student

Alter table tbl_student
Add Student_LastName nvarchar(15)

Select * from tbl_student

insert into tbl_student (Student_LastName) values
('patel') where student_name = 'stephen'

update tbl_student set Student_LastName = ' patel' where  student_id = 1
update tbl_student set Student_LastName = 'rathod ' where  student_id = 2
update tbl_student set Student_LastName = ' pradhan' where  student_id = 3
update tbl_student set Student_LastName = 'kumar ' where  student_id = 4
update tbl_student set Student_LastName = ' mistry ' where  student_id = 5
