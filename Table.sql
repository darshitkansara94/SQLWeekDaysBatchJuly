use EmployeeData -- Change database 

--Table :
--	Table is collection of rows and columns.
--	Every column has it's own datatype . Which can be same or differnet for the column.
--	Table name should start with prefix "tbl_".
--	As a first char number and special char is not allowed.
--	Table name with same name is not allowed in same database.

	Syntax :
		create table tablename
		(
			columnname1 datatype,
			columnname2 datatype,
			.
			.
			.
			.
			columnnameN datatype
		)

	Create column rules :
		Space is not allowed in column name.
		Not start with special char and number.
		Every column must have datatype.
		Instead of space between the column name use '_'.
			Example : Your columnname is "Employee Name" so instead use write "Employee_Name".
		Column name should be not same as sql function name.
		How to identify inbuild function : Example :
			key -> Inbuilt function
			EmployeeName -> Not sql function 

	-- Crate table with name -> EmployeeDetail
		--Employee_Id
		--Employee Name
		--Employee Corporate Id
		--Employee DOB
		--Employee Age
		--Employee Salary

	-- Table with null field 
	create table tbl_EmployeeDetail
	(
		Employee_Id int,
		Employee_Name nvarchar(50),
		Employee_Corporate_Id nvarchar(10),
		Employee_DOB datetime,
		Employee_Age int,
		Employee_Salary decimal(18,2)
	)
		
	-- Table with Non-nullable field
	create table tbl_EmployeeDetail_1
	(
		Employee_Id int,
		Employee_Name nvarchar(50) not null,
		Employee_Corporate_Id nvarchar(10),
		Employee_DOB datetime,
		Employee_Age int,
		Employee_Salary decimal(18,2)
	)

	-- Alter :
		If we want to modify / Update the current instance (Table, Store Procedure, Functions)
			then alter is used.

		-- Add new column :
			If we want to add new column to the existing table.

			Syntax :
				Alter table table_name
				Add column_name data_type

			Example :
				Alter table tbl_EmployeeDetail
				Add Employee_Mobile bigint

				-- Multiple column add
				Alter table tbl_EmployeeDetail
				Add Employee_Mobile bigint

				Alter table tbl_EmployeeDetail
				Add Employee_Address nvarchar(100)

		-- Alter Column :
			If we want to update datatype in existing column.
			It is not modify / rename the column name.

			Syntax :
				Alter table table_name
				Alter column column_name datatype

			Exmaple :
				Alter table tbl_EmployeeDetail
				Alter column Employee_Mobile bigint

		-- Remove column
			Remove existing column from table.

			Syntax :
				Alter table table_name
				drop column column_name

			Example :
				Alter table tbl_EmployeeDetail
				drop column Employee_Mobile

		-- Drop table
			Remove existing table from database.

			Syntax :
				drop table table_name

			Example :
				drop table tbl_EmployeeDetail_1
