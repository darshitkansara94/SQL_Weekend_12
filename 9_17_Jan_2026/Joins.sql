Joins :
	Join is combination of two or more table into single select 
		statement.

	-- Types of joins :
		Inner Join :
			Inner join extract common data from two or more tables.
			To identify common data, We can create foreign key between
				two tables.

			-- Syntax :
				Select tbl_A.columnName,tbl_B.columnname,.. 
				from tbl_A
				Inner join tbl_B
					on tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select * from tbl_StudentMaster
				Select * from tbl_StudentDetail

				Select sm.Student_Name,sd.StudentDetail_Subject,
				sd.StudentDetail_Marks
				from tbl_StudentMaster sm
				Inner join tbl_StudentDetail sd
					on sm.Student_Id = sd.Student_Id

				Select sm.Student_Name,sd.StudentDetail_Subject,
				sd.StudentDetail_Marks
				from tbl_StudentDetail sd
				Inner join tbl_StudentMaster sm 
					on sd.Student_Id = sm.Student_Id

		Left Join
		Right Join
		Self Join
		Outer Join