Scope Identity:
	Scope identity return last inserted value of PK and identity column.
	We will use scope identity when we have two or more table dependency.

	-- Syntax :
		Select SCOPE_IDENTITY()

	-- Example :
		Select * from tbl_StudentMaster
		Select * from tbl_StudentDetail
		
		Exec sp_InsertStudentData
			@Student_Name = 'Darshit',
			@Student_Age = 22,
			@Class_Id = 3,
			@StudentDetail_Subject = 'Maths',
			@StudentDetail_Marks = 89