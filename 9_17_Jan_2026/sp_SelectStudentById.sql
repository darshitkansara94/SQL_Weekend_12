-- Parameterized SP
Create procedure sp_SelectStudentById
(
	@StudentId int -- 3
)
As
Begin
	Select Student_Id,Student_Name,Student_Age 
		from tbl_StudentMaster
	Where Student_Id = @StudentId

	--Select Student_Id,Student_Name,Student_Age 
	--	from tbl_StudentMaster
	--Where Student_Id = 3
End

-- Execution of SP
Exec sp_SelectStudentById 3

Exec sp_SelectStudentById
	@StudentId = 3