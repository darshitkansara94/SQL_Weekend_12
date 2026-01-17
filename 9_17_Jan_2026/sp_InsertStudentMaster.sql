Alter procedure sp_InsertStudentMaster
(
	@StudentName nvarchar(15),
	@StudentAge int
)
As
Begin
	Insert into tbl_StudentMaster(Student_Name,Student_Age)
	values(@StudentName,@StudentAge)

	Select Student_Id,Student_Name,Student_Age 
		from tbl_StudentMaster 
End

-- Execution of SP
Exec sp_InsertStudentMaster
	@StudentName = 'Twinkle',
	@StudentAge = 20

Exec sp_SelectStudent






--Insert into tbl_StudentMaster(Student_Name,Student_Age)
--values('Darshit',25)