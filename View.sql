View :
	View is a virtual table.
	View contains row and column just like normal table.
	It contains one or more than one table.
	Output is like a real table.
	We can create only one view with the name, Duplicate view name is not allowed in the same DB.

	-- Syntax :
		create view view_name as
		Select * from table_name

	-- Example 
		Create view vw_Category as 
		Select Category_Id,Category_Name from tbl_CategoryMaster

		Select * from vw_Category

		Select * from tbl_CategoryMaster
		select * from tbl_SubCategoryMaster		

		Alter view vw_CategoryAndSubCategory as
		Select cm.Category_Name,scm.SubCategory_Name,scm.Quantity,scm.Price, cm.Category_Id from tbl_CategoryMaster cm
		Inner join tbl_SubCategoryMaster scm on cm.Category_Id = scm.Category_Id

		Select * from vw_CategoryAndSubCategory vwcm
		inner join tbl_OrderMaster on tbl_OrderMaster.Category_Id = vwcm.category_id


		-- How to Modify View :
			Using a 'Alter' keyword we can modify existing view.

			-- Syntax :
				ALter view vw_name as
				Select statement

		-- Delete view from DB.
			We have a 'Drop' keyword to delete view.

			Drop view vw_Category