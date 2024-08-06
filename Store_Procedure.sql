Store procedure (SP) :
	SP is block of code that make code reusability and avoid code duplication.
	Store prcedure define with sp_StoreprocedureName
	SP name can not start with special characters.
	Variable / Parameters declared in SP always start with '@'.


	-- Syntax : (Without parameter)
		--create procedure sp_StoreprocedureName		
		--AS
		--Begin
		--	SQL Statement (Select, Update, Delete, Insert)
		--End

	-- Syntax : (With Parameter)
		--create procedure sp_StoreprocedureName
		--(
		--	Declare parameter
		--)
		--AS
		--Begin
		--	SQL Statement (Select, Update, Delete, Insert)
		--End
		
select * from tbl_Employee

exec sp_InsertEmployee 
	null,29,3

exec sp_InsertEmployee
	@Employee_Age = 30,
	@Manager_Id = 5

exec sp_SelectEmployeeById @Employee_Id = 5