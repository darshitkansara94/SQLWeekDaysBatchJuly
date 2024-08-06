alter procedure sp_InsertEmployee
(
	@Employee_Name nvarchar(20) = null,
	@Employee_Age int,
	@Manager_Id int
)
As
Begin
	Insert into tbl_Employee(Employee_Name,Employee_Age,Manager_Id)
	values(@Employee_Name,@Employee_Age,@Manager_Id)
End