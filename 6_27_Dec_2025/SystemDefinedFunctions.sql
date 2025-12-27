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

				substring
				left
				right

		Date function
