Alter procedure sp_InsertStudentData
(
	@Student_Name nvarchar(15),
	@Student_Age int,
	@Class_Id int,
	@StudentDetail_Subject nvarchar(20),
	@StudentDetail_Marks decimal(18,2)
)
As
Begin
	Declare @MaxStudentId int

	Insert into tbl_StudentMaster(Student_Name,Student_Age,class_id)
	values(@Student_Name,@Student_Age,@Class_Id)

	-- Select @MaxStudentId = Max(Student_Id) from tbl_StudentMaster
	Set @MaxStudentId = SCOPE_IDENTITY()
	print(@MaxStudentId)

	Insert into tbl_StudentDetail(Student_Id,StudentDetail_Subject,StudentDetail_Marks)
	values(@MaxStudentId,@StudentDetail_Subject,@StudentDetail_Marks)
End