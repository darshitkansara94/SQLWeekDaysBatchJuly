Group By
	Group by duplicate column value.
	Group duplicate data into a single column.
	Group by is used after a where clause.
	Group by is reuired when we use Agrregate functions.

	-- Syntax 
		Select column1, column2, column3
			from table1 group by column1, column2, column3

		-- With Where cluase
		Select column1, column2, column3
			from table1 where column1 = condition group by column1, column2, column3

		
		-- Example :
			-- Select distinct Category_Name from tbl_CategoryMaster

			Select Category_Name from tbl_CategoryMaster group by Category_Name

			Select Category_Id,Category_Name from tbl_CategoryMaster group by Category_Name, Category_Id			

			--select Student_Name,Student_Marks,
			--case when Student_Marks > 80 then 'A Grade'
			--When Student_Marks > 70 And Student_Marks <= 80 then 'B Grade'
			--Else 'C Grade' End as StudentResult
			--from tbl_student where Student_Marks is not null
			--group by Student_Name,Student_Marks

	--Name id
	--Jay	1
	--Jay	2

	--select Name from table1 group by name -> o/p : Jay

	--select Name,id from table1 group by name,id -> 

Order By :
	When we need to display value in ascending / descending value.
	By default order by is ascending.
	'ASC' define ascending.
	'DESC' define descending.
	Order by use after group by.
	Ascending(ASC) order = A-Z & 0-9
	Descending(DESC) order = Z-A & 9-0

	-- Syntax :
		Select column1, column2, column3 from table1
		order by column_name asc / desc

		Select column1, column2, column3 from table1
		Where column1 = 'value'
		group by column1
		order by column_name asc / desc

	-- Example
		Select Student_Id,Student_Name,Student_Marks from tbl_Student 
		where Student_Marks is not null
		order by Student_Marks

		Select Student_Name from tbl_Student
		group by Student_Name, Student_Id
		order by Student_Id desc