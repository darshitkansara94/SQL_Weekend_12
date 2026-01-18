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

		Left Join :
			Left join take all data from left table and matching data
				from right table.

			-- Syntax :
				Select * from tbl_A
				Left join tbl_B
					on tbl_A.column_name = tbl_B.column_name

				Here, tbl_A is consider as a left table and tbl_B is consider as 
					right table.

			-- Example :
				Select * from tbl_StudentMaster
				Select * from tbl_StudentDetail

				Select sm.Student_Name,sd.StudentDetail_Subject,
					sd.StudentDetail_Marks 
				from tbl_StudentMaster sm
				Left join tbl_StudentDetail sd on
					sm.Student_Id = sd.Student_Id


				Select sm.Student_Name,sd.StudentDetail_Subject,
					sd.StudentDetail_Marks 
				from  tbl_StudentDetail sd
				Left join tbl_StudentMaster sm on
					sm.Student_Id = sd.Student_Id

		Right Join :
			Right join return all the data from right table and matching data from
				left table.

			-- Syntax :
				Select * from tbl_A
				Right join tbl_B on tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select sm.Student_Name,sd.StudentDetail_Subject,
					sd.StudentDetail_Marks 
				from tbl_StudentMaster sm
				Right join tbl_StudentDetail sd on
					sm.Student_Id = sd.Student_Id

				Select sm.Student_Name,sd.StudentDetail_Subject,
					sd.StudentDetail_Marks 
				from tbl_StudentMaster sm
				Right join tbl_StudentDetail sd on
					sd.Student_Id = sm.Student_Id

		Self Join :
			Table join with the itself.
			Here  we will consider a single table to join.
			Here alias name of the table is mandatory.

			-- Syntax :
				Select * from tbl_A as A, tbl_A as B
				Where A.column_name = B.column_name

			-- Example :
				Select * from tbl_Employee

				Select E2.EmployeeName as Employee_Name,
					E2.EmployeeSalary as Employee_Salary,
					E1.EmployeeName as Manager_Name,
					E1.EmployeeSalary as Manager_Salary
				from tbl_Employee as E1, tbl_Employee as E2
				Where E1.EmployeeId = E2.ManagerId

		Outer Join :
			Outer join will return data from both the tables.

			-- Syntax :
				Select * from tbl_A, tbl_B
				Where tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select * from tbl_StudentMaster as sm, tbl_StudentDetail as sd
				Where sm.Student_Id = sd.Student_Id
