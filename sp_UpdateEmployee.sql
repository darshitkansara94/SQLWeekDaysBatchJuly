alter procedure sp_UpdateEmployee
(
	@Employee_Id int,
	@Employee_Name nvarchar(20),
	@Employee_Age int,
	@Manager_Id int
)
As
Begin
	Update tbl_Employee set
		Employee_Name = @Employee_Name, -- Pankaj
		Employee_Age = @Employee_Age, -- 25
		Manager_Id = @Manager_Id -- 3
	where 
		Employee_Id = @Employee_Id -- 2

	Select Employee_Id,Employee_Name,Employee_Age,Manager_Id 
	from tbl_Employee where Employee_Id = @Employee_Id
End

--exec sp_UpdateEmployee 
--	@Employee_Id = 9, 
--	@Employee_Name = 'Ashu',
--	@Employee_Age = 21,
--	@Manager_Id = 1