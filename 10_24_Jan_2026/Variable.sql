Variable :
	Variable is use to store value juts like a param.
	But we can not use this variable out of scope.

	-- Syntax :
		-- Declaration
			Declare @Variable_name datatype

		-- Initialization
			Set @Variable_name = 'value'

	-- Example :
		-- Declaration
		Declare @Name varchar(20)

		-- Initialization
		Set @Name = 'Darshit'

		print(@Name)

		-- Declaration with Initialization
		Declare @LastName nvarchar(20) = 'Kansara'

		print(@LastName)