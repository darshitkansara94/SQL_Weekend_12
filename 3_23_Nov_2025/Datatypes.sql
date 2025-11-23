Datatypes :
	Datatype is use to restrict a user to enter a data into particular format or type.

	-- Types of datatypes :
		-- String
			String is combination of alphabet, numeric and special char.
			String values are always written with single quote.

			Ex :
				string1 = 'Weltec123@'
				string2 = 'weltec123'
				string3 = 'weltec@'
				string4 = '@123'
				string5 = '123'
				string6 = '@'
				string7 = 'Weltec'

			-- Types of string :
				varchar 
					Use to store string value.
					Varchar support single scripted language. It will support only english.
					We need to mention a length of the datatype

					-- Syntax :
						varchar(n)

						varchar(max)

					-- Example :
						First name : xyz = varchar(15)
						
						Address : varchar(400)

				nvarchar :
					This datatype is similar to the varchar datatype
					The key difference is that, nvarchar support
						multiscripted language. That means
						we can save data in any language.
					If we are using any other language apart from
						english we need to use 'N' as prefix
						Ex. N'example'

					-- Syntax :
						nvarchar(length)

				char :
					Char insert a data with the fixed length.

					-- Syntax :
						char(length)

					-- Example :
						value1 = 'xyz'

						char(10)

						'xyz       '
						'x         '

		-- Number :
			We will not use any single quote to write number.
			If space is in between number then we will not 
				consider as number.

			1123

			int
				It contains number only.
				No need to assign length.

				-- Syntax :
					int

			bigint :
				bigint is also use to store numbers, but 
					it will store large numbers.

				-- Syntax :
					bigint

		-- Decimal :
			If point comes in between the number that 
				value is consider as decimal.
			We need to assign a length in decimal

			-- Syntax :
				decimal(total_length,value_after_point)

				total_length = total count of number
					including point value.
				value_after_point = value we need to display
					after point in decimal.

			-- Example :	
				value = 29.5

				decimal(18,2) = 29.50
				decimal(18,3) = 29.500

		-- Date and time :
			SQL has prdefined date format : yyyy/mm/dd

			date :
				Use to store only date in table.

				-- Syntax :
					date

			time :
				Use to store only  time.

				-- Syntax :
					time

			datetime :
				Use when we need to store date and time both values.

				-- Syntax :
					datetime

		-- bit :
			Bit use to store only binary number.
			We can use when we need to display some
				Active/Inactive or true and false value.

			-- syntax :
				bit