Operator :
	When we need to perform some operation on data and filter out the record we can use operator.

	Types of operator :
		Arithmetic Operator :
			Addition
			Substraction
			Multiplication
			Division
			Modulo

		Comparision Operator :
			Comparision operator is use when we want to compare two values.

			Types of comparision Operator :
				Equal to (=) :
					When we need to compare two values we need to use comparision operator.
					When we have a matched value then we will get output else we will get empty result.

					-- Syntax :
						Select column1,column2,...columnN from tbl_name
						Where column_name = 'value_to_found'

					-- Example :
						Select * from tbl_EmployeeMaster

						Select * from tbl_EmployeeMaster where Employee_Name = 'raj'

				Greater than (>) : 
					Left side value is compare with right side and check that left side value is
						greater than or not.

					-- Syntax :
						Select column1,column2,...columnN from tbl_name
						Where column_name > 'value_to_found'

					-- Example :
						Select * from tbl_EmployeeMaster

						Select * from tbl_EmployeeMaster where Employee_Salary > 26000

				Less than (<) :
					Compare value and return data if we have lesser value then mention in the right side.

					-- Syntax :
						Select column1,column2,...columnN from tbl_name
						Where column_name < 'value_to_found'

					-- Exmaple :
						Select * from tbl_EmployeeMaster where Employee_Salary < 26000

				Greater than or equal to (>=) :
					We will get output if the result is equal to or greater than.

					-- Syntax :
						Select column1,column2,...columnN from tbl_name
						Where column_name >= 'value_to_found' 

					-- Example :
						Select * from tbl_EmployeeMaster
						Where Employee_Salary >= 26000

						Select * from tbl_EmployeeMaster
						Where Employee_Salary > 26000

				Less than or equal to (<=) : 
					We will get output if the result is equal to or less than.

					-- Syntax :
						Select column1,column2,...columnN from tbl_name
						Where column_name <= 'value_to_found' 

					-- Example :
						Select * from tbl_EmployeeMaster
						Where Employee_Salary <= 26000

						Select * from tbl_EmployeeMaster
						Where Employee_Salary < 26000

				<> (not equal to) :
					Return all the result apart from right side value.
					We have different sign for not equal is '!='.

					-- Syntax :
						Select column1,column2,...columnN from tbl_name
						Where column_name <> 'value_to_found'

						Select column1,column2,...columnN from tbl_name
						Where column_name != 'value_to_found'

					-- Example :
						Select * from tbl_EmployeeMaster
						Where Employee_Id != 2

						Select * from tbl_EmployeeMaster
						Where Employee_Id <> 2

		Logical Operator :
			Types of logical operator :
				And
				OR
				In :
					When we need to filter multiple record from the same column.
					In backend it is working like OR operator.

					-- Syntax :
						Select column1, column2,...columnN from tbl_name
						Where columnName in ('value1','value2',...,'valueN')

					-- Example :
						Select * from tbl_EmployeeMaster

						Select * from tbl_EmployeeMaster
						Where Employee_Id = 1 Or Employee_Id = 4 Or Employee_Id = 7
							or Employee_Id = 10

						Select * from tbl_EmployeeMaster
						Where Employee_Id in (1,4,7,10)

						Select * from tbl_EmployeeMaster
						Where Employee_Name in ('Jay','Dev','Raj')

				Between :
					Between use to find a range from data.
					It will include value1 and value2 in result.

					-- Syntax :
						Select column1,column2,...,columnN from tbl_name
						Where column_name between value1 and value2

					-- Example :
						Select * from tbl_EmployeeMaster
						Where Employee_Id between 1 and 4						

				Like :
					When we need to apply filter for startwith, Endwith and Contains.
					To filterout records we will use '%' sign.

					-- Syntax :
						-- Start With
						Select column1,...columnN from tbl_name
						Where column_name like 'char_to_find%'

						-- End With
						Select column1,...columnN from tbl_name
						Where column_Name like '%char_to_find'

						-- Contain
						Select column1,...columnN from tbl_name
						Where column_name like '%char_to_find%'

					-- Example :
						Select * from tbl_EmployeeMaster

						-- Start with
						Select * from tbl_EmployeeMaster
						Where Employee_Name like 'd%'

						-- End with
						Select * from tbl_EmployeeMaster
						Where Employee_Name like '%vam'

						-- Contains
						Select * from tbl_EmployeeMaster
						Where Employee_Name like '%m%'

				Null 
					Identify the null records from the table for particular column

					-- Syntax :
						Select column1,..,columnN from tbl_name
						where column_name is null

					-- Example :
						Select * from tbl_EmployeeMaster
						where Is_Active is null

						Select * from tbl_EmployeeMaster
						where Is_Active = null

						Select * from tbl_EmployeeMaster
						Where Employee_Name is null

				Not :
					It will convert the output from true to false.
					We can use this with In, Between, Like and null

					-- Syntax :
						Select column1,..,columnN from tbl_name
						where not in (value1,..,valueN)

						Select column1,..,columnN from tbl_name
						Where column_name not between value1 and value2

						Select column1,..,columnN from tbl_name
						Where column_name not like '%value%'

						Select column1,..,columnN from tbl_name
						Where column_name is not null

					-- Example :
						Select * from tbl_EmployeeMaster
						Where Employee_Name not in ('Jay','Dev','Raj')

						Select * from tbl_EmployeeMaster
						Where Employee_Id not between 1 and 4	

						Select * from tbl_EmployeeMaster
						Where Employee_Name not like '%m%'

						Select * from tbl_EmployeeMaster
						Where Employee_Name is not null

				Exists

				-- Select statement with multiple operator
				Select * from tbl_EmployeeMaster
				Where Employee_Name not in ('Jay','Dev','Raj')
					or Employee_Name like '%m%'


		-- Conditional Operator :




	