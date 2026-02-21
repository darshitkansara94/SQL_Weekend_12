CTE :
	CTE - Common Table Expression.
	CTE create temporary / Virtual table in the memory at the time of execution.
	Once execution is completed then temporary / Virtual will be removed from memory.
	CTE always start with the keyword 'with'.

	-- Syntax :
		With cte_name as
		(
			-- Select statement.
		)

		Select * from cte_name

	-- Example :
		Select * from tbl_Classmaster
		------------------- Simple example
		With cte_Class as
		(
			Select Classid,Class_division,Class_standard 
			from tbl_Classmaster
		)

		Select * from cte_Class

		----------------------------------------
		Select * from tbl_employee
		With cte_Employee as
		(
			Select 
				Employeeid,Employeename,Employeesalary,Managerid,is_deleted,
				Case When is_deleted = 0 Then 'Active'
					Else 'Inactive'
				End as Employee_Status
			from tbl_employee		
		)
		Select * from cte_Employee
		Where Employee_Status = 'Inactive'

		Select * from tbl_employee

		-- Find out second highest salary from employee table.
		With cte_EmployeeSalary as
		(
			Select Employeename,Employeesalary,
			Dense_rank() over(Order by Employeesalary desc) as salaryRank
			from tbl_employee
		)
		Select * from cte_EmployeeSalary where salaryrank = 5

		-------------- How to find duplicate records
		Select * from tbl_StudentMaster

		With cte_Duplicaterecords as
		(
			Select 
				Student_Name,Student_Age,
				ROW_NUMBER() 
				over(Partition by Student_Name Order by Student_Id desc) as rank_number
			from tbl_StudentMaster
		)

		--Delete from cte_Duplicaterecords
		--Where rank_number > 1

		Select * from cte_Duplicaterecords
		Where rank_number > 1