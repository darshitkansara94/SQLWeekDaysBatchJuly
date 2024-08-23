-- Switch case
	Switch case is faster than if else and if else if else
	We can use inside select statement to get output based on column value.
	We can implement with select statement

	-- Syntax 
		-- Single condition
		Select
			Case when condition then result
			Else result end as alias_name

		-- Multiple condition
			Select when condition then result
				when condition2 then result
				when condition3 then result
				else result end as alias_name

	-- Example 
		declare @name nvarchar(20) = 'Ajay'
		declare @name1 nvarchar(20) = 'Priyank'
		
		Select
			Case when @name = @name1 then 'String is equal'
				else 'String is not equal' end as MatchNames


		-- Grade system
			--Greater than 90 = 'Grade A'
			--Less than equal to 90 And Greaterthan 80 = 'Grade B'
			--Less than equal to 80 And Greaterthan 65 = 'Grade C'
			--Less than equal to 65 And Greaterthan 55 = 'Grade D'
			--Less than equal to 55 And Greaterthan 35 = 'Grade E'
			--Less than equal 35 = 'Grade F'

			declare @Marks decimal(18,2) = 34

			Select
				Case when @Marks > 90 Then 'Grade A'
					When @Marks <= 90 And @Marks > 80 Then 'Grade B'
					When @Marks <= 80 And @Marks > 65 then 'Grade C'
					When @Marks <= 65 And @Marks > 55 then 'Grade D'
					When @Marks <= 55 And @Marks > 35 then 'Grade E'
					When @Marks <= 35 Then'Grade F'
					else 'Invalid choice' End as GradeSystem

					select [Student_Id],[Student_Name],[Student_Address],[Student_MobileNo],[Student_Age],[Student_Gender],[Student_DOB],
					[Student_Marks],
					Case when Student_Marks > 90 Then 'Grade A'
					When Student_Marks <= 90 And Student_Marks > 80 Then 'Grade B'
					When Student_Marks <= 80 And Student_Marks > 65 then 'Grade C'
					When Student_Marks <= 65 And Student_Marks > 55 then 'Grade D'
					When Student_Marks <= 55 And Student_Marks > 35 then 'Grade E'
					When Student_Marks <= 35 Then'Grade F'
					else 'Invalid choice' End as GradeSystem
					from tbl_Student





		