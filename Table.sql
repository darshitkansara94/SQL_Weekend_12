Table :
	Table is collection of rows and columns.
	Table is use to store data.
	Table store data into form of rows.

	-- Rules for create table :
		Table name should not start with special char or numbers.
		Space is not allowed in table.
		If space is required then we will use underscore (_)
		First char should be in caps and if you use underscore then after underscore first char should be caps.

	-- Syntax :
		Create table tbl_name
		(
			column_name datatype,
			column_name datatype,
			.
			.
			.
			column_name datatype
		)

	-- Example :
		Create database Ecommerce

		Create table tbl_CategoryMaster
		(
			Category_Id int,
			Category_Name nvarchar(25),
			Inserted_Date datetime,
			IsActive bit
		)

	-- Rename table
		Rename table name without loosing data.

		-- Syntax :
			exec sp_rename 'old_tablename','new_tablename'

		-- Example :
			exec sp_rename
				'[dbo].[tbl_CategoryMaster]',
				'tbl_Category'

	-- Remove table from DB :
		Delete table from database.
		Once table is deleted we can not recover that
			table again.
		By deleting table it will delete data too.

	-- How to rename column :
		Rename existing column.

		-- Syntax :
			exec sp_rename 'old_columnName','New_columnName','column'

		-- Example :
			exec sp_rename 'tbl_Category.IsActive',
				'Is_Active','column'

		Modify existing table :
			How to change datatype :
				Change datatype into existing table.

			-- Syntax :
				Alter table tbl_name
				Alter column column_name new_datatype

			-- Example :
				Alter table tbl_Category
				Alter column Category_name varchar(20)

		Add new column :
			Add new column into existing table
				without affecting existing data.

			-- Syntax :
				Alter table tbl_name
				Add column_name datatype

			-- Example :
				Alter table tbl_Category
				Add Inserted_By int

		Remove column :
			Remove column from existing table
				without affecting data.
			It will give error where we used the column.

			-- Syntax :
				Alter table tbl_name
				drop column column_name

			-- Example :
				Alter table tbl_Category
				Drop column Inserted_by

		Remove table :
			Remove existing table from DB.
			Once table is deleted we can not recover 
				same table again and also with that we 
				will loose data too.

			-- Syntax :
				drop table tbl_name

			-- Example :
				drop table tbl_Category

