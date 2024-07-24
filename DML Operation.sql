DDL Operation :
	Data Defination language
	Contain "Select" statement.

	Select Statement :
		To fetch / read data from existing table.

		Syntax :
			Select column1, column2, column3,...columnN
				from table_name

			Select * from table_name

		Example :
			Select * from tbl_EmployeeDetail

			-- With column
			Select Employee_Id, Employee_Name,Employee_Corporate_Id,Employee_DOB,Employee_Age,
				Employee_Salary from tbl_EmployeeDetail


DML Operation :
	Data manipulation language.
	DML operation perform data chnages on existing table.
	DML include :
		-- Insert
			When we need to add a new record into the existing table.

			Syntax :
				Insert into table_name(column1, column2, column3,....,columnN)
				values(value1, value2, value3,....,ValueN)

				-- multiple insertion :
					Insert into table_name(column1, column2, column3,....,columnN)
					values(value1, value2,value3...valueN),
					(value1, value2,value3...ValueN)

			Example :
				Insert into tbl_EmployeeDetail(Employee_Id,Employee_Name,Employee_Corporate_id,Employee_DOB,
					Employee_Age,Employee_Salary)
				values(1, 'WelTec Institute','D1234','2024-06-15 23:05:32.803',25, 25000.65)

				-- Error generation code
				Insert into tbl_EmployeeDetail(Employee_Id,Employee_Name,Employee_Corporate_id,Employee_DOB,
					Employee_Age,Employee_Salary)
				values(1, 'WelTec Institute','D1234',25, 25000.65)

				-- Multiple insert
				Insert into tbl_EmployeeDetail(Employee_Id,Employee_Name,Employee_Corporate_id,Employee_DOB,
					Employee_Age,Employee_Salary)
				values
				(2, 'WelTec Institute','D2345','2024-06-15 23:05:32.803',26, 35000.65),
				(3, 'R C Technical Institute','D4578','2024-06-15 00:05:32.803',28, 45000.65)
		-- Update
		-- Delete


Select Employee_Id,Employee_Name,Employee_Corporate_id,Employee_DOB,
	Employee_Age,Employee_Salary
from tbl_EmployeeDetail