-- Foreign key / Reference Key :
CRUD operation :
	C - Create
	R - Read / Select
	U - Update
	D - Delete

	Create :
		When we need to insert a new reocrd/ create a new record t existing table at that time we will use insert.

		Syntax :
			Insert into table_name(column1, column2, column3....columnN)
			values(value1, value2, value3....valueN)

		Example :	
			
			--create table tbl_Course
			--(
			--	Course_Id int primary key identity(1,1),
			--	Course_Name nvarchar(20)
			--)
		
			Insert into tbl_Course(Course_Name)
			values('MBA')

			Insert into tbl_Course(Course_Name)
			values('BBA')

			-- Insert multiple record
				Insert into tbl_Course(Course_Name)
				values('BTech'),('MCA'),('BCA')

			-- Insert using select statement
				Insert into tbl_Course(Course_Name)
				Select 'Diploma' as Course_Name

		-- Select :
			When we need to get / read data from existing table

			Syntax :
				Select column1, column2..ColumnN from table_name

				Select * from table_Name

			Example :
				Select * from tbl_Course

				Select Course_name from tbl_Course

				Select 'Diploma' as Course_Name, 'IT' as Course

			
	

	