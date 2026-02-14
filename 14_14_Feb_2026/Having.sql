Having clause :
	It is use to filterout the data just like where.
	But we can use having clause with the aggregate function to filter the records.

	-- Syntax :
		Select * from tbl_name
			Having aggreggate_fun(col_name) = 'value'

	-- Example :
		Select count(SrNo) as sr_no,Student_Name from vw_StudentRecords
		Group by Student_Name
		having count(SrNo) > 1

		Select Count(SrNo),Student_Name from vw_StudentRecordsWithPartitionBy
		Group by Student_Name
		Having Count(Srno) > 1
