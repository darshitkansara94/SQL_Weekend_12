Conditions :
	Conditions are use to filter the data, also if we need to execute the block of code
		based on condition.
	Condition always return true or false.

	-- Types of conditions :
		If..Else :
			If..Else condition is working on condition and taking decision based on
				condition output.
			Here, we have two block of code where one is for If and second part is else.
			In this condition at a time only one block of code is executed.
			In the single execution only one block of code will be executed.

			-- Syntax :
				If (condition)
				Begin
					-- Code 
				End
				Else
				Begin
					-- Code
				End

			-- Example :
				If (6 > 5) --  true
				Begin
					print('6 is greater than 5')
				End
				Else
				Begin
					print('6 is less than or equal to 5')
				End

				If (6 < 5) 
				Begin
					print('6 is greater than 5')
				End
				Else
				Begin
					print('6 is less than or equal to 5')
				End

				-----------------------------------------------------
				Declare @val1 int
				Declare @Val2 int

				-- Initialization
				Set @val1 = 6
				Set @Val2 = 5

				If (@val1 > @Val2)
				Begin
					print('Value1 is greater than value 2')
				End
				Else
				Begin
					print('Value1 is less than or equal to value 2')
				End


		If..Else if..Else :
			Working structure is similar to the If..Else.
			In a single execution only one block of code is executed.
			We can include n number of else if condition.

			-- Syntax :
				If (condition)
				Begin
					-- Block of code
				End
				Else if (condition)
				Begin
					-- Block of code
				End
				Else if (condition)
				Begin
					-- Block of code
				End
				Else
				Begin
					-- Block of code
				End

			-- Example :
				Declare @val1 int = 5
				Declare @val2 int = 5

				If (@val1 > @Val2) 
				Begin
					print(concat_ws(' ',@val1,'is greater than',@val2))
				End
				Else if (@val1 < @Val2)
				Begin
					print(concat_ws(' ',@val1,'is less than',@val2))
				End
				Else
				Begin
					print(concat_ws(' ',@val1,'is equal to',@val2))
				End

		Case (Switch condition) :
			Case condition is working similar to the If..else and if..else if ..else.
			We can use this condition inside select statement.

			-- Syntax :
				-- Single condition
				Select Case 
					When condition Then 'Output'
					Else 'Output' End as alias_name from tbl_name

				-- Multiple Condition
				Select Case
					When condition Then 'Output'
					When condition Then 'Output'
					.
					.
					.
					Else 'Output' End as alias_name 
				from tbl_name

			-- Example :
				If (6 > 5) --  true
				Begin
					print('6 is greater than 5')
				End
				Else
				Begin
					print('6 is less than or equal to 5')
				End


				Select Case 
					When 6 > 5 Then '6 is greater than 5'
					Else '6 is less than or equal to 5' End as Condition


				Declare @val1 int
				Declare @Val2 int

				-- Initialization
				Set @val1 = 6
				Set @Val2 = 5

				If (@val1 > @Val2)
				Begin
					print('Value1 is greater than value 2')
				End
				Else
				Begin
					print('Value1 is less than or equal to value 2')
				End

				Declare @val1 int = 6
				Declare @val2 int = 8
				
				select case
				when @val1>@val2 then '6 is greater than 8'
				else '6 is less than 8'
				end as condition 

				Select * from tbl_employee

				--0 = Active
				--1 = Inactive

				Select 
				Employeename,Employeesalary,Is_Deleted,
				Case When Is_Deleted = 0 Then 'Active'
				Else 'Inactive' End as Record_Status
				from tbl_employee
				Where Is_Deleted = 0

				Select * from tbl_StudentMaster
				Select * from tbl_StudentDetail

				-- Scenerio based on 300
				300 - 250 = 'Grade A'
				250 - 200 = 'Grade B'
				200 - 160 = 'Grade C'
				160 - 110 = 'Grade D'
				110 - 90 = 'Grade E'
				Less than 90 = 'Grade F' 

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
				-- Where tbl_StudentMaster.Student_Id = 3
				Group by Student_Name







				Update tbl_StudentDetail set StudentDetail_Marks = '50.00' where StudentDetail_Id=8 