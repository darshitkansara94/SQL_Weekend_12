Alter procedure sp_SelectStudentDetail
(
	@Staff_Name nvarchar(20)
)
As
Begin
	Select * from vw_StudentWithStaff vw_Student
	Inner join tbl_StudentDetail sd
		on vw_Student.Student_Id = sd.Student_Id
	Where vw_Student.Staff_Name = @Staff_Name
End

Exec sp_SelectStudentDetail @Staff_Name = 'Dev'