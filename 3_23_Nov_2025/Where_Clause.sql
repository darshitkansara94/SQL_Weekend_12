Where clause:
	Where caluse is use to filter out the records from table based on condition.
	This conditions are using different operator to filter out data.
	When we apply where clause on any table with select statement, 
	Our actual table remain same. No changes are applied on table.

	-- Syntax :
		Select column1,column2,...,columnN from tbl_name
		where columnname='value'

		Update tbl_name set columnName = 'new_value'
		where columnname = 'value'

		Delete from tbl_name where columnname = 'value'

	-- Example :
		Update tbl_EmployeeMaster set
			Employee_Salary = '26000'
		Where Employee_Name = 'dev'

		Select * from tbl_EmployeeMaster Where Employee_Id = 1

		Delete from tbl_EmployeeMaster where Employee_Id = 6

		Select * from tbl_EmployeeMaster where Employee_Id = 6

	-- Multiple conditions with where clause :
		Use multiple condition within same statement in where clause.

		And :
			And present if all the conditions are true then only we will get output.
			If any condition is false then we will get empty result.

			-- Syntax :
				Select column1,column2,...,columnN from tbl_name
				where column1 = 'value' And column2 = 'value' And column3 = 'value'...

			-- Example :
				-- return record
				Select * from tbl_EmployeeMaster 
				Where Employee_Id = 2 And Employee_Name = 'dev'

				-- Return empty result as Employee Name 'Dev' associate with Employee Id 2 so
					-- condition is not fulfill here.
				Select * from tbl_EmployeeMaster 
				Where Employee_Id = 1 And Employee_Name = 'dev'

		OR :
			If any condition is fulfill the we will get output.

			-- Syntax :
				Select column1,...,columnN from tbl_name
				Where columnName = 'value' OR columnName = 'value'

			-- Example
				Select * from tbl_EmployeeMaster 
				Where Employee_Id = 6 OR Employee_Name = 'raj'	


		-- Soft Delete
			Select * from tbl_EmployeeMaster

			Select * from tbl_EmployeeMaster where Is_Active = 0

			Select * from tbl_EmployeeMaster where Is_Active = 1

			Update tbl_EmployeeMaster set Is_Active = 1 where Employee_Id = 4

			Update tbl_EmployeeMaster set Is_Active = 0 where Employee_Id = 3


		-- Hard Delete
			Delete from tbl_EmployeeMaster where Employee_Id = 3
			

	