Constraint :
	When we need to create rules or policy on table then we will use
		constraint

	-- Types of constraints :
		Primary key (PK): 
			Primary key is use to save unique records. With that it is not
				allow null records.
			We can apply only one primary key per table.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype primary key,
					column_name datatype,
					.
					.
					.
					column_nameN datatype
				)

				-- Add into existing table
				Alter table tbl_name
				Add constraint cn_name primary Key(column_name)

			-- Example :
				Create table tbl_StaffMaster
				(
					Staff_Id int,
					Staff_name varchar(15),
					Staff_Qualification varchar(20)
				)

				-- Add into existing table
				Alter table tbl_StaffMaster
				Alter column Staff_Id int not null

				Alter table tbl_StaffMaster
				Add constraint cn_PrimaryKey Primary key(Staff_Id)

				drop table tbl_StaffMaster

				-- Create table with PK :
					Create table tbl_StaffMaster
					(
						Staff_Id int primary key,
						Staff_Name varchar(15),
						Staff_Qualification varchar(20)
					)

		Identity Key:
			Identity key generate auto increment number for the column.
			It is mostly use with the PK.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype identity(start_number,increment_by),
					column_name datatype,
					.
					.
					column_nameN datatype
				)

				start_number : Start number is present, From which number 
					user want to start
				increment_by : Present by how many number user want to
					increment value.

			-- Example :
				Create table tbl_StaffMaster
					(
						Staff_Id int primary key identity(1,1),
						Staff_Name varchar(15),
						Staff_Qualification varchar(20)
					)

				Select * from tbl_StaffMaster

				Insert into tbl_StaffMaster(Staff_Name,Staff_Qualification)
				values('Darshit','BTech')


		Foreign Key (FK) :
		default
		check
		unique