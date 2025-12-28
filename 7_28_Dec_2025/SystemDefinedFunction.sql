System defined Functions (SDF) :
	Function is block of code that we can reuse multiple time.
	We can access function by its name.
	SDF is function that is come with the SQL. We can not modify or chnage the
		functions name or functionality of that function.

	-- Types of SDF :
		Aggregate function :
			Aggregate function is use to do mathemetical operations.
			When we use aggregate function with multiple column in select statement	
				it is mandatory to use group by clause.

			-- Types of Aggregate functions :
				sum() :
					Represent addition of two numbers.

					-- Syntax :
						Select SUM(value) from tbl_name

					-- Example :
						Select * from tbl_studentdetail

						Select sum(student_marks) as Total_Marks 
						from tbl_studentdetail where student_id = 1

				avg() :
					Represnt average value of numbers.

					-- Syntax :
						Select AVG(expression) from tbl_name

					-- Example :
						Select * from tbl_studentdetail

						Select AVG(student_marks) 
						from tbl_studentdetail

				count() :
					Represent the total number of rows in table.
					
					-- Syntax :
						Select COUNT(expression) from tbl_name

					-- Example :
						Select * from tbl_studentdetail

						Select COUNT(*) from tbl_studentdetail

						Select COUNT(student_subject) from tbl_studentdetail

						Select COUNT(student_marks) from tbl_studentdetail

						update tbl_studentdetail set student_subject = ''
						where studentdetail_id in (4)
				max() :
					Return maximum value from column.

					-- Syntax :
						Select max(expression) from tbl_name

					-- Example :
						Select * from tbl_studentdetail

						Select max(student_marks) from tbl_studentdetail

				min() :
					We will get minimum value from the column.

					-- Syntax :
						Select min(expression) from tbl_name

					-- Example :
						Select * from tbl_studentdetail

						Select min(student_marks) from tbl_studentdetail


		String function :
			When we need to manipulate string function. We have a different
				string function to do operations like that.

			-- Types of string functions :
				len():
					Len function is consider a length function.
					If we need to idetify the length of string we can use 
						this function.
					Also if we want to perform some operation based on length.
					Space between words is also consider as a char.
					If we have a space at the starting of string so len will consider 
						as a char.
					If we have space at the end of string so len will not consider 
						as a char.

					-- Syntax :
						Select LEN(expression)

					-- Example :
						Select LEN('Hello World')

						Select LEN(' Hello World')

						Select LEN('Hello World ')

						Select * from tbl_student

						Select student_name,LEN(Student_name) as Length_Name
						from tbl_student

				char :
					When we need to identify the value of single charater.

					-- Syntax :
						Select CHAR(expression)

					-- Example :
						Select CHAR(65)

				concat :
					Concat merge two or more words and display as a single string.

					-- Syntax :
						Select concat('value1','value2',...'valueN')

					-- Example :
						Select concat('Hello','World') as concatination -- HelloWorld

						Select concat('Hello',' ','World') as concatinationWithSpace -- Hello World

						Select * from tbl_Student

						Select Student_Id,concat(Student_Name,' ',Student_LastName) as Full_Name,
						Student_Age,Student_Address
						from tbl_student

				concat + :
					Here we are using + icon to join two or more words.

					-- Syntax :
						Select 'value1' + 'value2' + ...+'valueN'

					-- Example :
						Select 'Hello' + ' ' + 'World'

						Select student_name + ' ' + student_LastName as FullName 
						from tbl_student

				concat_ws :
					Concat two or more words into single string.
					In concat_ws, WS stand for with seperator.
					We need to define seperator once and for the whole merge that seperator is used.

					-- Syntax :
						Select concat_ws(seperator,expression1,expression2,...,expressionN)

					-- Example :
						Select concat_ws('-','Hello','World','SQL') -- Hello World

						Select concat_ws('-','Hello','World SQL')

						Select concat_ws(' ',Student_name,Student_LastName)
						from tbl_Student

				trim :
					This function is to remove whitespace from the starting and ending of the string.
					Whitespace is, At the beginning of string or ending of string if we 
						found any space is consider as whitespace.
					If we have a space between two words then it will consider as a char
					For Example : ' Hello world '
						Here before 'H' and after 'D' space is created. That space is called as
							Whitespace.

					-- Syntax :
						Select trim(expression)

					-- Example :
						Select ' Hello World ' -- Hello World 

						Select trim(' Hello World ') --Hello World

						Select * from tbl_Student

						Select *,trim(Student_LastName) from tbl_Student 
						where trim(Student_LastName) like 'm%'

				rtrim :
					Rtrim remove whitespace from right side of the string only.
					If we have a whitespace at the left side then rtrim will ignore it.

					-- Syntax :	
						Select rtrim(expression)

					-- Example :
						Select rtrim(' Hello World ') as rtim_space
						-- Expected O/P : ' Hello World'
										-- Hello World
						Select Student_Id,Student_Name,Student_Address,
						Student_Age,Student_LastName,
						Rtrim(Student_LastName) as Rtrim_Space
						from tbl_Student

				ltrim :
					Remove whitespace from left side of the string.

					-- Syntax :
						Select Ltrim(expression)

					-- Example :
						Select ltrim(' Hello World ') as ltim_space --Hello World 

						Select Student_Id,Student_Name,Student_Address,
						Student_Age,Student_LastName,
						ltrim(Student_LastName) as ltrim_Space
						from tbl_Student

				replace :
					If we need to replace particular char / word in the string.

					-- Syntax :
						Select replace(expression,'char/word','New char/word')

					-- Example :
						Select replace('Hello World','d','l') -- Hello Worll

						Select replace('Hello World','o','I') -- HellI WIrld

						Select replace('Hello World','world','SQL')

						Select replace('Hello World','world',',')

						Select * from tbl_student

				upper :
					Upper function will convert the whole string into upper case.

					-- Syntax :
						Select upper(expression)

					-- Example :
						Select upper('Hello World')

						Select Student_Id,Student_Name,Student_Address,
						Student_Age,Student_LastName, 
						upper(Student_LastName) as Upper_LastName
						from tbl_Student

						Select Student_Id,Student_Name,Student_Address,
						Student_Age,Student_LastName, 
						trim(upper(Student_LastName)) as Upper_LastName
						from tbl_Student

				lower :
					When we need to convert a string into lower case we can use lower function.

					-- Syntax :
						Select lower(expression)

					-- Example 
						Select lower('Hello World')

						Select Student_Id,Student_Name,Student_Address,
						Student_Age,Student_LastName, 
						trim(lower(Student_LastName)) as Upper_LastName
						from tbl_Student

						--patel = Patel

				reverse :
					Reverse funtion display string in reverse order.
					It will start printing value from right to left.

					-- Syntax :
						Select reverse(expression)

					-- Example :
						Select reverse('Hello World')

						Select reverse(Student_name) from tbl_Student

				substring :
					Substring is use to extract the particular part of string or
						particular char from the string.
					To extract a value we need to define index of that string.
					And in stringindex always start from 1.

					-- Syntax :
						Select substring(expression,start_index,char_count)

						expression : Our actual string
						start_index : Starting index from where we need to extract string
						char_count : how many char we need to extract from string.

					-- Example :
						Select 'Hello World'						
						--H - 1
						--E - 2
						--L - 3
						--L - 4
						--O - 5
						--space - 6
						--W - 7
						--O - 8
						--R - 9
						--L - 10
						--D - 11
						Select Substring('Hello World',4,5)

						Select Student_Name,Student_Age,Student_Address ,
						Student_LastName,
						substring(Student_Name,4,3) as ExtractedName
						from tbl_Student

				left :
					Extract char like substring. But here we can not define
						starting index. we can only define count of char.
					It will always start extract from index 1. And no of char	
						from string.

					-- Syntax :	
						Select left(expression, char_count)

					-- Example :
						Select left('Hello World',3)

				right :
					It will extract string from right to left. And always start
						with the last index.

					-- Syntax :
						Select right(expression,char_count)

					-- Example :
						Select right('Hello World',3) -- rld

						select upper(left(TRIM(Student_LastName),1)) +
						lower(substring (Student_LastName,2,len(Student_LastName)))
						from tbl_student

						select upper(left(Student_LastName,1)) +
						lower(substring (Student_LastName,2,))
						from tbl_student

		Date function :
			Using date function we can extract day, month, year or time as a part.

			-- Types of Date function :
				sysdatetime :
					Sysdatetime return current system date and time.

					-- Example :
						Select sysdatetime() -- 2025-12-28 13:09:49.3407894

				sysutcdatetime :
					sysutcdatetime return system datetime.
					UTC is for Coordinated universal time.
					
					-- Example :
						Select sysutcdatetime()

				getdate :
					Getdate return date and time from where SQL is installed.
					Ex. If my SQL is installed in any other country server and
						i am accessing that server in my local PC then getdate
						will return server time.

					-- Example :
						Select getdate() -- 2025-12-28 13:18:27.167
						Select sysdatetime() -- 2025-12-28 13:18:27.1686964

				getutcdate :
					It will retrun common time across the regions.
					Server location is not matter in getutcdate.

					-- Example :
						Select getutcdate() -- 2025-12-28 07:51:17.723

				day :
					If we want to extract current day from date.
					
					-- Syntax :
						Select day('date')

					-- Example :
						Select day(getdate())

				month :
					Return current month from date

					-- Syntax :
						Select month('date')

					-- Example :
						Select month(getdate())

				year :
					Return current year from date

					-- Syntax :
						Select year('date')
					
					-- Example :
						Select Year(getdate())

				isdate :
					Verify that date is valid or not.
					If date is valid then output is 1 else 0.

					-- Syntax :
						Select isdate('date')

					-- Example :
						Select isdate(getdate())

						Select getdate()

						Select isdate('2025-12-32 13:30:29.443')

				datediff :
					Compare a duration or day , month, and year by 
						assigning two dates.

					-- Syntax :
						Select datediff(expression,'date1','date2')

					-- Example :
						Select getdate()

						Select getdate() + 1

						Select datediff(day,'2025-12-28 13:34:47.613','2026-12-29 13:34:47.613')

						Select datediff(month,'2025-12-28 13:34:47.613','2026-02-28 13:34:47.613')

						Select datediff(year,'2025-12-28 13:34:47.613','2026-02-28 13:34:47.613')

						Select datediff(hour,'2025-12-28 13:34:47.613','2026-02-28 13:34:47.613')

						Select datediff(minute,'2025-12-28 13:34:47.613','2026-02-28 13:34:47.613')

						Select datediff(millisecond,'2025-12-28 13:34:47.613','2026-02-28 13:34:47.613')

				datename :
					Datepart extract diff value from date like day, month, year
						current week, current quoter.
					Datepart return value in string datatype.

					-- Syntax :
						Select datename(expression,'date')

					-- Example :
						Select datename(day,getdate())
						Select datename(month,getdate()) -- December
						Select datename(year,getdate())
						Select datename(hour,getdate())
						Select datename(minute,getdate())
						Select datename(second,getdate())
						Select datename(millisecond,getdate())
						Select datename(QUARTER,getdate())
						Select datename(WEEK,GETDATE())
						Select datename(WEEKDAY,GETDATE()) -- Sunday
						Select DATENAME(ISO_WEEK,GETDATE())
						Select datename(DAYOFYEAR,GETDATE())

				datepart :
					Datepart is similar to the datename. the difference is
						it will return vaue in in Int datatype.
				
