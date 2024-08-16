Conversion Function:
	Convert function into one datatype to another datatype.

	Convert() :
		Convert function with specific format.

		Syntax :
			convert(datatype, value, format)
			datatype : In which datatype need to convert. required field
			value : column, static value. required field
			format : Data conversion format. Optional field

		Example:
			select CONVERT(int,10.50) as int_conversion

			select CONVERT(varchar(10),10) as string_conversion

			select CONVERT(nvarchar(11),GETDATE(),106)

			select convert(decimal(18,2), 10)

			select Student_Id, Student_Age,Student_Address,Student_Class,
			Student_Marks, CONVERT(int,Student_Marks) as Student_Marks_int
			from tbl_Student

		-- Cast
			Convert only one datatype to another datatype.

			-- Syntax:
				cast(column/value as datatype)

				-- (decimal)21.50 -> int

				-- Example :
					Select CAST(21.50 as int) as convertedValue

					select * from tbl_Employee

					Select CAST(Employee_Age as decimal(18,2)) as Employee_Age 
					from tbl_Employee

					Select CONVERT(decimal(18,2), Employee_Age) as Employee_Age 
					from tbl_Employee
					


