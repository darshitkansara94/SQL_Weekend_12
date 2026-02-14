Ranking Functions :
	This function is use to give sequence value to rows.

	-- Types of ranking function :
		1. Row_number() :
			Provide sequencial order to the row.
			It will make sure that if any row is delete in the middle of record
				this function will reorder all the row with sequence number.

			-- Synatx :
				Select ROW_NUMBER() over(Order by column_name asc/desc) as alias_name, 
					column_name,column_name from tbl_name

			-- Example :
				Select * from tbl_StudentMaster

				Select ROW_NUMBER() over(Order by Student_Id) as SrNo,
					Student_Id,Student_Name,Student_Age
				from tbl_StudentMaster

				Select ROW_NUMBER() over(Order by Student_Name desc) as SrNo,
					Student_Id,Student_Name,Student_Age
				from tbl_StudentMaster

				Delete from tbl_StudentMaster where Student_Id = 11

		2. Dense_Rank() :
			Dense_rank is similar to Row_number and it is provide dequence number.
			But the difference is, Whatever column we mentioned in order by and any
				duplicate value is present for that so it will create same sequence number
				for that value.

			-- Syntax :
				Select DENSE_RANK() over(order by column_name asc/desc) as alais_name,
					column_name,column_name
				from tbl_name

			-- Example :
				Select DENSE_RANK() over(order by Student_Id) as SrNo,
					Student_Id,Student_Name,Student_Age
				from tbl_StudentMaster

				Select DENSE_RANK() over(order by Student_Name) as SrNo,
					Student_Id,Student_Name,Student_Age
				from tbl_StudentMaster

				Create view vw_StudentRecords as
				Select DENSE_RANK() over(order by Student_Name) as SrNo,
					Student_Id,Student_Name,Student_Age
				from tbl_StudentMaster

				Select * from vw_StudentRecords
				Where SrNo = 9

		Partition by :
			Patition by use with row_number and dense_rank function.
			If i use with row_number then it will give different sequential number
				to each record.
			That means each record start with the 1 and if duplicate value exists then
				sequence will generate.

			-- Synatx :
				Select ROW_NUMBER() over(partition by column_name,column_name 
					order by column_name asc/desc) as alias_name, column_name,column_name
				from tbl_name

			-- Example :
				Select ROW_NUMBER() over(order by Student_Name desc) as SrNo,
					Student_Id,Student_Name
				from tbl_StudentMaster

				Create view vw_StudentRecordsWithPartitionBy as
				Select ROW_NUMBER() over(partition by Student_Name order by Student_Name desc) as SrNo,
					Student_Id,Student_Name
				from tbl_StudentMaster
			