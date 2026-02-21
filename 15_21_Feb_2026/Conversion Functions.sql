Conversion Functions :
	Convert data from one datatype to another datatype.
	But the limitation is we can not convert string data to int.

	-- Types of functions :
		-- Convert:
			Convert functions use to convert data from one datatype to another.
			With that we can format a date.

			-- Syntax :
				Convert(datatype,value,dateType)
				
				datatype : Datatype that we want to convert to.
				value : value that we are going to convert
				dateType : This is optional value. This is use to format date only.

			-- Example :
				Select CONVERT(nvarchar(15),GETDATE(),106)
				Select CONVERT(nvarchar(15),GETDATE(),101)

				Select convert(nvarchar(10),101) as numbers

				Select * from tbl_employee

				Select CONCAT(EmployeeId,EmployeeName) from tbl_employee

				Select Convert(nvarchar(10),EmployeeId) + EmployeeName as EmployeeWithId 
				from tbl_employee

		-- Cast :
			We can convert the data from one datatype to another just like convert.
			But the difference is we can not format data here.

			-- Syntax :
				Cast(value as datatype)

			-- Example :
				Select Cast(EmployeeId as nvarchar(10)) + EmployeeName as EmployeeWithId 
				from tbl_employee
