Order By :
	Order by use to arrange data in asc or desc order.
	We can apply this on any column.
	Also we can use it with multiple clause like where, group by etc.
	By default order is asc.

	-- Syntax :
		Select column_name,column_name from tbl_name
		order by column_name asc/desc

	-- Example :
		Select * from tbl_employee

		-- Default asc order
		Select * from tbl_employee
		Order by Employeename

		Select * from tbl_employee
		order by Employeename desc

		Select Student_Name,Sum(StudentDetail_Marks) as Total_Marks,
				Case
					When Sum(StudentDetail_Marks) between 250 and 300 Then 'Grade A'
					When Sum(StudentDetail_Marks) between 200 and 250 Then 'Grade B'
					When Sum(StudentDetail_Marks) between 160 and 200 Then 'Grade C'
					When Sum(StudentDetail_Marks) between 110 and 160 Then 'Grade D'
					When Sum(StudentDetail_Marks) between 90 and 110 Then 'Grade E'
					Else 'Grade F' End as Grade
				from tbl_StudentDetail				
				Inner join tbl_StudentMaster 
					on tbl_StudentMaster.Student_Id = tbl_StudentDetail.Student_Id
				Where tbl_StudentMaster.Student_Id = 3
				Group by Student_Name
				Order by Student_Name desc
				