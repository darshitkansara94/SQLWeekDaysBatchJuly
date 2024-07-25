Foreign key / Reference key :
	
	-- Syntax :
		-- New table create
		-- Child Table
			Create table table_name
			(
				column1 int primary key identity(1,1),
				column2 int, -- Primary key of parent table
				column3 nvarchar(20),

				-- Add foreign key
				constraint fk_name foreign key (childtable_column)
					references parent_table(pk_Column)
			)

		-- Existing table 
		Alter table child_table
		Add constraint fk_name foreign key (child_column)
			references parent_table(pk_column)

		-- Drop / remove foreign key
			Alter table table_name -- child table
			drop constraint fk_name


	-- Example 
		select * from tbl_CategoryMaster   -- Parent table
		select * from tbl_SubCategoryMaster-- Child table

		delete from tbl_SubCategoryMaster where Category_Id = 4


		-- Adding foreign key in existing table
			Alter table tbl_SubcategoryMaster
			Add constraint fk_CategoryId foreign key (Category_Id) references tbl_CategoryMaster(Category_Id)

		Insert into tbl_CategoryMaster(Category_Name) values('Watch')

		Insert into tbl_SubCategoryMaster(Category_Id,SubCategory_Name,Quantity,Price)
		values(12,'Lenovo',10,40000)


		delete from tbl_CategoryMaster where Category_Id = 3

		-- Create table
		create table tbl_OrderMaster
		(
			Order_Id int primary key identity(1,1),
			Category_Id int,
			Subcategory_Id int,
			Order_Name nvarchar(20),

			constraint fk__OrderMaster_CategoryId foreign key (Category_Id) references tbl_CategoryMaster(Category_Id),
			constraint fk_OrderMaster_SubcategoryId foreign key (Subcategory_Id) references tbl_SubcategoryMaster(Subcategory_Id)
		)

		-- Drop foreign key
		Alter table tbl_SubcategoryMaster
		drop constraint fk_CategoryId