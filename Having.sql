Having clause :
	Having  clause allow user to use aggregate function as condition.
	Having clause is used after group by and before order by.

	-- Syntax :
		Select column1,column2,column3,columnN from table1
		group by column_name
		having condition (Aggregate function as condition)
		Order by column_name

	-- Example 
		Select * from tbl_EmployeeMaster

		Select COUNT(Employee_Age) as EmployeeAge_Count
		from tbl_EmployeeMaster		
		group by Employee_Age
		having COUNT(Employee_Age) > 1	
		
		Select COUNT(Employee_Age) as EmployeeAge_Count
		from tbl_EmployeeMaster		
		where COUNT(Employee_Age) > 1	
		group by Employee_Age

		With cte_GroupByAge as
		(
			Select row_number() over(partition by Employee_Age order by Employee_Age) as Age_Rank, Employee_Age,
			Employee_Name, Employee_MobileNo from tbl_EmployeeMaster
		)

		Select * from cte_GroupByAge where Age_rank  > 1