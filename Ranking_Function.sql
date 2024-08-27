Ranking function :
	Use for assign serial number to the every row.
	Maintain a sequence in row.

	1. Row_number()
		Provide a sequence to the row.

		-- Syntax 
			Select ROW_NUMBER() over(order by column2 desc) as Srno, column1, column2 from table_name

		-- Example 
			Select ROW_NUMBER() over(order by Category_name) as srno, Category_Name from tbl_CategoryMaster

	2. Dense_Rank()
		Same sequenc provide to the duplicate value.

		-- Syntax :
			Select DENSE_RANK() over(order by column_name desc/asc) as alias_name, column1,column2 from table_name

		-- Example :
			Select DENSE_RANK() over(order by Category_Name) as Srno,Category_Name from tbl_CategoryMaster

Interview Question :
	Difference between Row_Number() & Dense_Rank()
	Find the second highest salary.
	Delete duplicate records from the table.