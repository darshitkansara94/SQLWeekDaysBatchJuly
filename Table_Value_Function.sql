Table value function :
	Table value function return table as a output.
	We can apply join with other table with table value function output.

	-- Syntax :
		Create function fn_SampleFunction
		(
			Parameters
		)
		Returns Table
		As
			Return statement

		Select * from dbo.tablefunction()


select * from tbl_Student

select * from dbo.fn_StudentData()

exec sp_GetStudentData 6

-- Assignment :
	-- Get Student Grade by entering marks using function