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

		