Index :
	Index use to improve Select statement execution performance.
	If we create more index on a single table it may slow down Insert, Update 
		and delete execution.

	-- Types Indexes
		-- Clustered Index :
			We can create only one clustered index per table.
			If we have a PK in table, By default clustered index will create.

			-- Syntax :
				Create clustered index idx_name on
				tbl_name(column_name)

			-- Example :
				Create clustered index idx_ClassStandard
				on tbl_ClassMaster(Class_Standard)

		-- Non-clustered Index :
			We can create this index on multiple columns.
			But creating on multiple column affect performance.
			We can create a index normally on the column that we are using in
				where clauses.

			-- Syntax :
				Create nonclustered index idx_name 
				On tbl_name(column_name)

			-- Example :
				Create nonclustered index idx_ClassStandard
				On tbl_ClassMaster(Class_Standard)

			-- Unique index :
				Allow to store unique value in column.
				At the time of creating unique index, If column contains duplicate value
					then it will not allow to create.
				Before create make sure that all the value are unique for that column.

				-- Syntax :
					Create unique nonclustered index idx_name
					On tbl_name(column_name)

				-- Example :
					Select * from tbl_StudentMaster

					Create unique nonclustered index idx_StudentName
					on tbl_StudentMaster(Student_Name)

					Insert into tbl_StudentMaster(Student_Name,Student_Age)
					values('Harshit1',26)

					Update tbl_StudentMaster set
						Student_Name = 'unknown'
					Where Student_Id = 5

			-- Filtered index :
				Filter index is use to create index with the condition.
				This index always use with unique index and it is nonclustered.

				-- Syntax :
					Create unique nonclustered index idx_name
					on tbl_name(column_name)
					Where condition

				-- Example :
					Select * from tbl_StaffMaster
					Where Is_Deleted = 1 And Staff_Name = 'Vipul'

					--Alter table tbl_StaffMaster
					--Add Is_Deleted bit					

					Create unique nonclustered index idx_StaffName
					On tbl_StaffMaster(Staff_Name)
					Where Is_Deleted = 1

					Insert into tbl_StaffMaster(Staff_Name,Staff_Age,Is_Deleted)
					values('Vipul',25,1)

					Update tbl_StaffMaster set
						Is_Deleted = 0
					Where Staff_Id = 1016

		-- Remove Index :
			Delete index from table

			-- Syntax :
				Drop index idx_name on tbl_name

			-- Example :
				Drop index idx_StaffName on tbl_StaffMAster

					
			