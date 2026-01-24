Alter procedure sp_EmployeeInsert
(
	@EmployeeName nvarchar(15),
	@EmployeeSalary decimal(18,2),
	@ManagerId int
)
As
Begin
	If not exists (Select Employeename from tbl_employee where Employeename = @EmployeeName)
	Begin
		-- Insert
		Insert into tbl_employee(Employeename,Employeesalary,Managerid)
		values(@EmployeeName,@EmployeeSalary,@ManagerId)
	End
	Else
	Begin
		-- Update
		Declare @EmployeeId int

		Select @EmployeeId = Employeeid from tbl_employee 
			where Employeename = @EmployeeName

		print(@EmployeeId)

		Update tbl_employee set
			Employeesalary = @EmployeeSalary
		Where Employeeid = @EmployeeId
	End
End

Exec sp_EmployeeInsert
	@EmployeeName = 'Pooja',
	@EmployeeSalary = '95000',
	@ManagerId = 2


Select * from tbl_employee