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
			Foreign key is Primary key of parent table and
				reference key of child table is called as FK.
			We can have null value in FK.
			We can have multiple FK in single table.
			If we are insert/update record in parent table then reference key value
			 must be present in parent table.
			And if we delete some value from parent table then it is not used /
				reference in any child table.

			-- Syntax :
				-- Create new table
				Create table tbl_name
				(
					Column_name datatype,
					column_name datatype,
					.
					.
					column_nameN datatype,

					Constraint cn_name foreign key (Column_name_childtable)
					references parent_table(parent_table_columnname)
				)

				-- In existing table
				Alter table tbl_name
				Add constraint cn_name foreign key (Column_name_Childtable)
				references parent_table(parent_table_columnname)

			-- Example :
				-- Parent table
				Create table tbl_StudentMaster
				(
					Student_Id int identity(1,1) primary key,
					Student_Name nvarchar(15),
					Student_Age int
				)

				-- Child table
				Create table tbl_StudentDetail
				(
					StudentDetail_Id int primary key identity(1,1),
					Student_Id int,
					StudentDetail_Marks decimal(18,2),
					StudentDetail_Subject nvarchar(20),

					Constraint cn_fk_StudentId foreign key (Student_Id)
					references tbl_StudentMaster(Student_Id)
				)

				Select * from tbl_StudentMaster
				Select * from tbl_StudentDetail

				Insert into tbl_StudentMaster(Student_Name,Student_Age)
				values('Harsh',23)

				Insert into tbl_StudentDetail(Student_Id,StudentDetail_Marks,
					StudentDetail_Subject)
				values(1,'25.20','Maths')

				Update tbl_StudentDetail set Student_Id = null

				Delete from tbl_StudentMaster where student_id = 2

		default :
			We can set default value when user not use that column to insert/Update.
			If we use that column and set somevalue like blank then it will consider
				that value and default will not work.

			-- Syntax :
				Create table tbl_name
				(
					Column_name datatype,
					column_name datatype default 'value',
					.
					.
					column_nameN datatype default 'value',					
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name default 'value' for column_name

			-- Example :
				Select * from tbl_StudentMaster

				Insert into tbl_StudentMaster(Student_Age)
				values(25)

				Insert into tbl_StudentMaster(Student_Name)
				values('Mahipat')

				Insert into tbl_StudentMaster(Student_Name,Student_Age)
				values(null,24)

				Insert into tbl_StudentMaster(Student_Age)
				values(26)

				Insert into tbl_StudentMaster(Student_Name)
				values('Harshit')

				-- Existing table
				Alter table tbl_StudentMaster
				Add constraint cn_StudentAge default 0 for Student_Age

				Alter table tbl_StudentMaster
				Add constraint cn_StudentName default 'unknown' for Student_Name


		check :
			When we need to insert data based on condition.
			If condition is true then only it will allow to insert a data else
				it will throw error.

			-- Syntax :
				-- Create new table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype check(condition),
					.
					.
					.
					column_namen datatype
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name check(condition)

			-- Example
				Create table tbl_StaffMaster
				(
					Staff_Id int primary key identity (1,1),
					Staff_Name varchar(20),
					Staff_Age int check(Staff_Age > 18)			
				)

				Insert into tbl_StaffMaster(Staff_Name,Staff_Age)
				values('Darshit',19)

		unique :
			This constraint make sure that it will store unique value for that column.
			We can apply this constraint nmultiple columns.

			-- Syntax :
				-- Create new table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype unique,
					.
					.
					.
					column_namen datatype unique
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name unique(column_name)

			-- Example :
				

				Select * from tbl_StaffMaster				

				Insert into tbl_StaffMaster(Staff_Name,Staff_Age)
				Values('darshit',25)

				Alter table tbl_StaffMaster
				Drop constraint cn_StaffName

		not null :
			Make column manadatory or make user to insert data compulsory.
			User can not leave this column value in insert / update statement.

			-- Syntax :
				-- Create new table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype not null,
					.
					.
					.
					column_namen datatype
				)

				-- For existing table
				Alter table tbl_name
				Alter column column_name datatype not null

			-- Example :
				Alter table tbl_StaffMaster
				Alter column Staff_Address varchar(20) not null

				Select * from tbl_StaffMaster

				Insert into tbl_StaffMaster(Staff_Name,Staff_Address)
				values('Dev','Baroda')

				Insert into tbl_StaffMaster(Staff_Name,Staff_Address)
				values('Dev-1','')

				Insert into tbl_StaffMaster(Staff_Name)
				values('Dev-2')

		null :
			Allow user to insert null value in column.
			By default this constraint is applied on columns.

			-- Syntax :
				Alter table tbl_name
				Alter column column_name datatype null

			-- Example :
				Alter table tbl_StaffMaster
				Alter column Staff_Address varchar(20) null

				Insert into tbl_StaffMaster(Staff_Name)
				values('Dev-2')

				Select * from tbl_StaffMaster