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


		String function
		Date function
