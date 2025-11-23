CRUD Operation :
	CRUD operationis responsible for Insert, read, update or delete data into table.
	C - Create (Insert new record into table)
	R - Read (Fetch / read data from table)
	U - Update (Modify the existing record from the table)
	D - Delete (Delete existing record from table)

	-- Insert (Create) :
		Add new record into existing table.
		number of columns into insert 
			and number of value in values clause must be same.

		-- Syntax :
			Insert into tbl_name(column1,column2,....,columnN)
			values(value1,value2,....,valueN)

			-- Add multiple rows
			Insert into tbl_name(column1,column2,...,columnN)
			Values(value1,value1,..,value1),(value2,value2,...,value2),..
			, (value3,value3,..valueN)

			-- Insert with select
			Insert into tbl_name(column1,column2,...,columnN)
			Select column1,column2,...,column3 from tbl_name

		-- Example :	
			Insert into tbl_Category(Category_Id,Category_Name,Is_Active)
			Values(1,'Mobile',0)

			-- Errored statement
			Insert into tbl_Category(Category_Id,Category_Name,Is_Active)
			values(2,'Laptop')

			-- Errored statement
			Insert into tbl_Category(Category_Id,Category_Name)
			values(2,'Laptop',1)

			-- Multiple row insertion
			Insert into tbl_Category(Category_Id,Category_Name,Is_Active)
			values(2,'Laptop',1),(3,'Watch',1),(4,'Vacume',1)

			-- Insert with select
			Insert into tbl_Category(Category_Id,Category_Name,Is_Active)
			Select Category_Id,Category_Name,Is_Active from tbl_Category

			create database Ecommerce_DB
			use Ecommerce_DB

			create table book1(Category_Id int,Category_Name nvarchar(20),Is_Active bit)

			Insert into Ecommerce_DB.dbo.book1(Category_Id,Category_Name,Is_Active)
			Select Category_Id,Category_Name,Is_Active from tbl_category

	-- Read (Select) :
		Read data from table and display to the user in the form of table.

		-- Synatx :
			Select * from tbl_name
			
			Select column1,column2,column3,...,columnN from tbl_name

		-- Example :
			Select * from tbl_Category

			Select Category_Id,Category_Name,
			Is_Active from tbl_Category

			-- Select statement from another DB
			Select * from Ecommerce_DB.dbo.book1

	-- Update :
		Update existing record in table.
		When we update some value so we can not revert back.

		-- Syntax :
			Update tbl_name set
				columnName = 'new_value',columnName = 'new_value'

		-- Example :
			Select * from tbl_EmployeeMaster

			-- Add new column with the name 'Is_Active' type is bit

			-- alter table tbl_EmployeeMaster add Is_Active bit

			Update tbl_EmployeeMaster set
				Employee_Salary = '50000'

	-- Delete :
		Remove data from table.
		It will not change structure of the table.
		Once data is deleted we can not recover that data again.

		-- Syntax :
			Delete from tbl_name

		-- Example :
			Delete from tbl_EmployeeMaster

		