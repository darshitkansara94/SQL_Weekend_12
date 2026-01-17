Alter procedure sp_InsertStudentMasterOptionalParam
(
	@StudentName nvarchar(15) = 'unknown',
	@StudentAge int = null
)
As
Begin
	Insert into tbl_StudentMaster(Student_Name,Student_Age)
	values(@StudentName,@StudentAge)
End

-- Execution of SP
Exec sp_InsertStudentMasterOptionalParam
	@StudentName = 'Saima',
	@StudentAge = 20

Exec sp_SelectStudent