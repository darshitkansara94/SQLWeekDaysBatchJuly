-- Foreign key /  Referance Key :
	--Create a link between two tables.
	--Primary key of parent table and column of child table is referenced.

	--Why we need FK?
	--	To logically connect two tables.
	--	Remove deleted data from child table before remove from parent table

	-- Syntax :
		--constraint forignkey_name foreign key
		--	(columnof_child_table)
		--	references parent_table(PK_column)

	-- Parent Table
	create table tbl_CategoryMaster
	(
		Category_Id int primary key identity(1,1),
		Category_Name nvarchar(20)
	)

	-- Child table
	create table tbl_SubcategoryMaster
	(
		Subcategory_Id int primary key identity(1,1),
		Category_Id int,
		Subcategory_Name nvarchar(20),
		Subcategory_Price decimal(18,2),
		Constraint fk_CategoryId foreign key
			(Category_Id) references -- Column of child table
				tbl_CategoryMaster(Category_Id) -- Parent table
	)

	select * from tbl_Categorymaster
	select * from tbl_SubcategoryMaster
	select * from tbl_OrderMaster

	-- delete from tbl_OrderMaster where Order_Id = 4

	-- delete from tbl_SubcategoryMaster
	-- truncate table tbl_SubcategoryMaster

	Insert into tbl_Categorymaster(Category_Name)
	values('Laptop')

	Insert into tbl_SubcategoryMaster(Category_Id,Subcategory_Name,Subcategory_Price)
	values(1,'HP',49000)	

	select * from tbl_OrderMaster

	-- Add reference key into existing table
	-- Syntax :
		alter table table_name
		Add constraint fk_name foreign key (column_of_child_table)
			references parent_table(PK_column)

	--Example :
		alter table tbl_Ordermaster
		Add constraint fk_SubcategoryId foreign key (Subcategory_id)
			references tbl_Subcategorymaster(Subcategory_Id)

	-- Remove RK :
		alter table table_name
		drop constraint fk_name

		alter table tbl_Ordermaster
		drop constraint fk_SubcategoryId