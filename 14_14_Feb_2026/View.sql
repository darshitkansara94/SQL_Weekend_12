View :
	View is a virtual table. Which is not available in out table structure.
	We can not see that table but it is store in memory.
	We can create a view when we need to use same statement multiple times.

	-- Syntax :
		Create view vw_viewName as
		Select columnname1, columnname2, columname3...., columnnameN 
		from tbl_name

	-- Example :
		Select * from tbl_StudentMaster

		Create view vw_GetStudentMaster as
		Select Student_Id,Student_Name,Student_Age 
		from tbl_StudentMaster

		Select * from vw_GetStudentMaster

		-- Modify View
		Alter view vw_GetStudentMaster as
		Select Student_Id,ISNULL(Student_Name,'') as StudentName
		from tbl_StudentMaster

		Select * from vw_GetStudentMaster

		Select Student_Id,Isnull(Student_Name,'') as StudentName,
		Student_Age from tbl_StudentMaster

		Select * from tbl_StudentMaster
		Select * from tbl_StudentDetail
		Select * from tbl_StaffMaster


		Select 
			Student_Id,Student_Name,Isnull(Student_Age,0) as StudentAge,class_id
		from tbl_StudentMaster

		Select 
			Student_Id,Student_Name,Isnull(Student_Age,0) as StudentAge,class_id
		from tbl_StudentMaster
		Where StudentAge = 0


		Create view vw_SelectStudent as
		Select 
			Student_Id,Student_Name,Isnull(Student_Age,0) as StudentAge,class_id
		from tbl_StudentMaster


		Select * from vw_SelectStudent
		Where StudentAge <> 0


	-- Remove / Delete view
		Delete existing view from DB.

		-- Syntax :
			Drop view view_name

		-- Example :
			Drop view vw_SelectStudent

	Select * from tbl_StudentMaster

	Create view vw_StudentMaster as
		Select Student_Id,Student_Age,Student_Name 
		from tbl_StudentMaster

	Select * from vw_StudentMaster

	Insert into tbl_StudentMaster(Student_Age,Student_Name)
	values(25,'Unknown')

	Update tbl_StudentMaster set Student_Name = 'Harsh' 
	Where Student_Id = 1011

	Delete from tbl_StudentMaster where Student_Id = 1011


	-----------------------------------------------------------
	Select * from tbl_StaffMaster
	Select * from tbl_Classmaster
	Select * from tbl_StudentMaster
	Select * from tbl_StudentDetail

	Alter view vw_StudentWithStaff as
	Select sm.Staff_Name,sm.Staff_Age, 
	CONCAT(cm.Class_standard,' ','(',cm.Class_division,')') as ClassName,
	stud.Student_Name,stud.Student_Age, stud.Student_Id
	from tbl_StaffMaster sm
	Inner join tbl_Classmaster cm 
		on sm.Staff_Id = cm.staffid
	Inner Join tbl_StudentMaster stud
		on stud.Class_Id = cm.ClassId


	Select * from vw_StudentWithStaff



	

		