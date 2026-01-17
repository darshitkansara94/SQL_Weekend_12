-- Default SP
Create procedure sp_SelectStudent
As
Begin
	Select Student_Id,Student_Name,Student_Age 
		from tbl_StudentMaster
End

-- Execute Sp
Exec sp_SelectStudent
