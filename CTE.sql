CTE :
	Common Table Expression.
	TO create temp. table and based on that we can apply select statement.
	Create a table at the time of execution and destroy the table after execution is completed.
	CTE is always start with the keyword "with".

	-- Syntax :
		With cte_name as
		(
			Select statement
		)

		Select * from cte_name

	-- Example :
		with cte_SelectById as
		(
			Select ROW_NUMBER() over(order by Category_Id) as Srno,
			Category_Id,Category_Name from tbl_CategoryMaster
		)

		Select Srno,Category_Id,Category_Name from cte_SelectById
		where Srno = 3

		-- Without CTE
		-- Wil give error because Srno column is not exist in table and 
		-- Here Srno column is created by select statement.
		Select ROW_NUMBER() over(order by Category_Id) as Srno,
			Category_Id,Category_Name from tbl_CategoryMaster
			where Srno = 3

		-- Find second highest salary
		Select * from tbl_Employee order by Employee_Salary desc


		With cte_EmployeeSalary as
		(
			Select dense_rank() over(order by Employee_Salary desc) as Srrank,
			Employee_Name,Employee_Age,Employee_Address,Employee_DOB,Employee_MobileNo,Employee_Salary from tbl_Employee
		)

		Select * from cte_EmployeeSalary where Srrank = 5

		-- Delete duplicate record from table
		Select * from tbl_Employee order by Employee_Name
		
		With cte_DeleteDUplicateRecords as
		(
			Select ROW_NUMBER() over(partition by Employee_Name,Employee_Number order by Employee_Name desc) as Srno,
			Employee_Name,Employee_Number,Employee_Address,Employee_Age,Employee_Salary
			from tbl_Employee
		)

		Delete from cte_DeleteDUplicateRecords where Srno > 1