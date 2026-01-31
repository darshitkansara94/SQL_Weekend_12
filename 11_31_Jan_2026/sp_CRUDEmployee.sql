Alter procedure sp_CRUDEmployee
(
	@Type nvarchar(20) = null,
	@EmployeeId int = null,
	@EmployeeName nvarchar(20) = null,
	@EmployeeSalary decimal(18,2) = null,
	@ManagerId int = null
)
As 
Begin
	If (@Type = 'Insert') -- null = 'Insert'
	Begin
		Insert into tbl_employee(Employeename,Employeesalary,Managerid)
		values(@EmployeeName,@EmployeeSalary,@ManagerId)
	End
	Else if (@Type = 'Update')
	Begin
		Declare @Name nvarchar(20)
		Declare @Salary decimal(18,2)
		Declare @Manager_Id int

		If(@EmployeeName is null)
		Begin
			Select @Name = Employeename from tbl_employee where Employeeid = @EmployeeId
		End
		Else
		Begin
			Set @Name = @EmployeeName
		End

		If(@EmployeeSalary is null)
		Begin
			Select @Salary = Employeesalary from tbl_employee where Employeeid = @EmployeeId
		End
		Else
		Begin
			Set @Salary = @EmployeeSalary
		End

		If(@ManagerId is null)
		Begin
			Select @Manager_Id = Managerid from tbl_employee where Employeeid = @EmployeeId
		End
		Else
		Begin
			Set @Manager_Id = @ManagerId
		End

		Update tbl_employee set
			Employeename = @Name,
			Employeesalary = @Salary,
			Managerid = @Manager_Id
		Where 
			Employeeid = @EmployeeId 			
	End
	Else If (@Type = 'Delete')
	Begin
		Delete from tbl_employee Where Employeeid = @EmployeeId
	End
	Else
	Begin
		If(@EmployeeId is null)
		Begin
			Select Employeeid,Employeename,Employeesalary,Managerid 
			from tbl_employee
		End
		Else
		Begin
			Select Employeeid,Employeename,Employeesalary,Managerid 
			from tbl_employee Where Employeeid = @EmployeeId
		End
	End
End


Select * from tbl_employee

Exec sp_CRUDEmployee
	@Type = 'Insert',
	@EmployeeName = 'Vijay',
	@EmployeeSalary = 75000,
	@ManagerId = 3

Exec sp_CRUDEmployee
	@Type = 'Update',
	@EmployeeId = 2,
	@EmployeeName = 'Vijay',
	@EmployeeSalary = 75000,
	@ManagerId = 3

Exec sp_CRUDEmployee @EmployeeId = 2 

Exec sp_CRUDEmployee
	@Type = 'Update',
	@EmployeeId = 2,
	@EmployeeName = 'Radhe',
	@EmployeeSalary = 65000
