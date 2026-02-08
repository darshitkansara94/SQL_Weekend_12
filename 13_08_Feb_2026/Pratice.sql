Create new table (ClasMaster) with the fields
	ClassId(Pk and auto increment)
	StaffId(Foreign Key from Staff Table)
	Stabdard
	ClassDivision

Add a new column in StudentMaster with the name ClassID and create foreign key
	for that with the table ClassMaster(ClassId)


	create table tbl_Classmaster 
	(	Classid int primary key identity(1,1),
		staffid int foreign key references tbl_staffmaster(staff_id),
		Class_standard int,
		Class_division varchar(5)
	)

	alter table [dbo].[tbl_StudentMaster]
	add class_id int


	alter table [dbo].[tbl_StudentMaster]
	add constraint fk_classid 
	foreign key(class_id)
	references tbl_Classmaster (classid)

	Select * from tbl_StaffMaster
	Select * from tbl_Classmaster
	Select * from tbl_StudentMaster
	Select * from tbl_StudentDetail

	Insert into tbl_Classmaster (staffid,Class_standard,Class_division)
	values (2,4,'A')

	Insert into tbl_Classmaster (staffid,Class_standard,Class_division)
	values (5,7,'C'),(5,2,'B'),(9,4,'D')

	update tbl_StudentMaster Set class_id = 3 where Student_id in (3,6,8,11,12)
	update tbl_StudentMaster Set class_id = 5 where Student_id in (4,5,7,10)
	update tbl_StudentMaster Set class_id = 2 where class_id is null

	update tbl_StudentMaster Set Student_Name = 'Raj' where Student_Name is null
	update tbl_StudentMaster Set Student_Name = 'Jay' where Student_Name = ''
	-- Student_id 3,6,8,11,12 = 3
	-- Student_id 4,5,7,10 = 5
	-- Student_id is null = 2

	select s.staff_id,s.staff_name,s.staff_age,s.staff_address,c.classid,
	c.staffid,c.class_standard,c.Class_division from tbl_StaffMaster s
	inner join tbl_Classmaster c
	on c.staffid = s.staff_id

	Select * from tbl_StaffMaster
	Select * from tbl_Classmaster