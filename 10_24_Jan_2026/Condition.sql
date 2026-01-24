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



		If..Else if..Else
		Case (Switch condition)
