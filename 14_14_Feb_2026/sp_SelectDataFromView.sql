Create procedure sp_SelectDataFromView
As
Begin
	Select Student_Age,Student_Id,Student_Name from vw_StudentMaster
End

Exec sp_SelectDataFromView