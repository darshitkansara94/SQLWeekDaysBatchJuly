SQL Operators :
	Arithmetic Operator
		+
			Return addition of two or more values.

			Example :
				Select 30 + 20 as Adddition
		-
			Return substraction of two or more values.

			Example :
				Select 30 - 20 as Substraction
		/
			Return division of two numbers.

			Example :
				Select 30 / 6 as Division
		*
			Return multiplication of two or more values.

			Example :
				Select 30 * 20 as Multiplication
		%
			Return reminder of two number.

			Example :
				Select 17 % 2 as Modulo
	Comparision Operator
		= (Equal to) :
			Compares two value and based on that return output. 
			
			Example :
				Select * from tbl_CategoryMaster where Category_Id = 3
			
		> (Greater than) :
			Right hand side value should be greater than left hand side.

			Example :
				Select * from tbl_CategoryMaster where Category_Id > 3
		< (Less than) :
			Left hand side value should be less than right hand side value.

			Example :
				Select * from tbl_CategoryMaster where Category_Id < 3
		>= (Greater than or equal to) :
			Right hand side value should be greater than left hand side or value should be equal on both side.

			Select * from tbl_CategoryMaster where Category_Id >= 3
			
		<= (Less than or equal to) :
			Left hand side value should be less than right hand side value or value should be equal on both side.

			Example :
				Select * from tbl_CategoryMaster where Category_Id <= 3
		<> (Not equal to) :
			Return value which is not equal to.

			Example :
				Select * from tbl_CategoryMaster where Category_Id <> 5
	Logical Operator
		And :
			Return true if all the condition is true.

			Example :									-- true				-- true							-- False
				Select * from tbl_CategoryMaster where Category_Id = 3 And Category_Name = 'Computer' And Category_Name = 'Laptop'

				Select * from tbl_CategoryMaster where Category_Id = 3 And Category_Name = 'Laptop'
		OR :
			Return result if any one condition is true.

			Example :
				Select * from tbl_CategoryMaster 
				where Category_Id = 3 And (Category_Name = 'Computer' Or Category_Name = 'Laptop')
				
		Between :
			Return true if value availble in the range.

			Example :
				Select * from tbl_CategoryMaster
					where Category_Id between 3 and 10
			
		Exists :
			Return true if value is exists in subquery.

			-- Example
				Select * from tbl_CategoryMaster where
					exists (Select Category_Id from tbl_CategoryMaster where Category_Id  = 4)
		In :
			When we want to filter data using multiple values.

			Example :
				Select * from tbl_CategoryMaster where
					Category_Id in (3,4,5,6)
		Like :
			 Follow one pattern.
			 If pattern is match then return true else false.

			 Example :
				-- Startwith c in Category name
				Select * from tbl_CategoryMaster
					where Category_Name like 'c%'

				-- End with c in category name
				Select * from tbl_CategoryMaster
					where Category_Name like '%e'
				
				-- Contain
				Select * from tbl_CategoryMaster
					where Category_Name like '%e%'
		Not :
			Display records if the condition is not true.

			Example 
				Select * from tbl_CategoryMaster
					where Category_Name not like 'c%'
		
