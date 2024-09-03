Functions :
	Function is a block of code which is used multiple times and multiple places in database
	By function we can reduce the code and avoid repetation of code.

	Types of functions :
		1. User defined function
			Scalar valued function
				When we want to return a single value.
				Return value string, int, decimal, double

				-- Syntax :
					--Create function fn_name
					--(
					--	Parameters
					--)
					--Returns datatype (nvarchar/int/decimal,double)
					--As
					--Begin
					--	return statement
					--End
				-- Execution of function				
					Select dbo.fn_Addition(10,20) as Addition

					select * from tbl_Employee

					Select Employee_Id,Employee_Name, Employee_Address,Employee_Age,Employee_Salary,Employee_Post,
						dbo.fn_GenerateEmployeeId(Substring(Employee_Name,1,1),Employee_Number,Employee_Id) as EmployeeId
					from tbl_Employee
					

			Table valued function

		2. System defined function
			Scalar values function
			Table value function

			String function
			Date function
			Aggregate function