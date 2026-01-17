Store Procedure (SP) :
	SP is block of code which is uset to avoid code duplicacy and we can use the same
		code multiple time.
	Our SP is store in the database once we execute it.
	We can not have SP with the same name in the same DB.
	We will start SP name with the prefix 'sp_'.

	-- Parameter :
		Paramtere can store a single value at a time.
		We can use this value whenever we need to print.
		We can display this value by using parameter name.
		Parameter name always decalre with '@' prefix.
		Space is not allowed.
		Parameter name has datatype.

		-- Syntax :
			@Parameter_Name datatype

	-- Syntax :
		-- Parameterized SP
		Create procedure sp_name
		(
			-- Parameter
		)
		As
		Begin
			-- SQL statement (Insert / Update/ Delete / Select)
		End

		-- Default SP
		Create procedure sp_name
		As
		Begin
			-- SQL statement (Insert / Update/ Delete / Select)
		End

		-- Execution of SP
		-- Default Sp
			exec sp_name

		-- Parameterized SP
			Exec sp_name val1,'val2'....

	-- Example :
		Exec sp_SelectStudent

