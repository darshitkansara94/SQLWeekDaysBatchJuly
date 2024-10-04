Cursor :
	Cursor is used to perform operation on every row of the table.
	At a time only single row is return.
	There is not possible to retrieve all the columns at the single iteration.
	Performance wise cursor is slow down the statement and take more time to execute the query.
	We can use cursor if we have a less data.
	Cursor is executable code only. We can not save in DB just like view or SP.

	-- Syntax 
		Declare cursor_name Cursor
			for select_statement
				open cursor_name
					fetch next from cursor_name into variable
				Close cursor_name

		Deallocate cursor_name

	-- Example 
		-- Single value print
			Declare @Category_Name nvarchar(100)
			Declare fetch_Category cursor
				for 
					Select Category_Name from tbl_CategoryMaster
				open fetch_category
					fetch next from fetch_Category into @Category_Name
					print(@Category_Name)
				Close fetch_Category
			Deallocate fetch_Category

			Select * from tbl_CategoryMaster

		-- Multiple rows
			Declare @Category_Name1 varchar(100)
			Declare @Category_Id int

			Declare fetchMultiple_Catgory cursor
				for 
					Select Category_Name,Category_Id from tbl_CategoryMaster
				open fetchMultiple_Catgory
					fetch next from fetchMultiple_Catgory into @Category_Name1, @Category_Id

					while @@FETCH_STATUS = 0
					Begin
						print(concat_ws(' ',@Category_Name1,@Category_Id))

						fetch next from fetchMultiple_Catgory into @Category_Name1, @Category_Id
					End

				Close fetchMultiple_Catgory

			Deallocate fetchMultiple_Catgory



-- Select * from tbl_CategoryMaster