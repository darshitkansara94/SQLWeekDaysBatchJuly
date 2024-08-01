--Joins :
--	When we want to get data from one or more table then we can use joins.

	--Inner join
		--Inner join returns common data from both table.
		--Inner join is apply on PK of parent table 
		--	or column data should be unique.

		--Syntax :
		--	Select column1,column2, column3 from table1
		--	Inner join table2 on table1.column = table2.column

		-- Example :
			Select CM.Category_Id,Category_Name,SubCategory_Id,
			SubCategory_Name
				from tbl_Categorymaster CM
			Inner join tbl_SubcategoryMaster SCM
				on CM.Category_Id = SCM.Category_ID



	--select * from tbl_categoryMaster
	--select * from tbl_subcategoryMaster

	--Left join :
		--Return all records from left table and matching data 
			--from right table
		-- First table in query is consider as left table and second table 
			-- is consider as right table.

		-- Syntax :
			--	Select column1,column2, column3 from table1
			--	Left join table2 on table1.column = table2.column

		-- Example :
			Select CM.Category_Id,Category_Name,SubCategory_Id,
			SubCategory_Name
				from tbl_Categorymaster CM
			Left join tbl_SubcategoryMaster SCM
				on CM.Category_Id = SCM.Category_ID
	--Right join :
		--Return all records from right table and matching data 
			--from left table
		-- First table in query is consider as left table and second table 
			-- is consider as right table.

		-- Syntax :
			--	Select column1,column2, column3 from table1
			--	Right join table2 on table1.column = table2.column

		-- Example :
			Select CM.Category_Id,Category_Name,SubCategory_Id,
			SubCategory_Name
				from tbl_Categorymaster CM
			Right join tbl_SubcategoryMaster SCM
				on CM.Category_Id = SCM.Category_ID

	-- Self Join :
			select emp.Employee_Id,emp.Employee_Name,manager.Employee_name as Manager_Name,manager.Employee_Age
			from tbl_Employee emp, tbl_Employee manager
			where manager.Employee_Id = emp.Manager_Id


	select * from tbl_categoryMaster
	select * from tbl_subcategoryMaster
