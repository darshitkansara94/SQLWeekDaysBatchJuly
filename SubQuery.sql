Sub Query :
	Write a query inside query is called subquery.
	Subquery is used in Where, Having clause.
	It is declare in round paranthesis.
	Subquery can use a single column as output.
	It works similar to joins.
	First inner(Child) query is execute then outer(Parent) query is execute

	-- Syntax
	Select * from table1 
		where column1 = (Select column1 from table2 where condition)

	-- Example :
		Select * from tbl_StudentDetails
		Select * from tbl_StudentsMaster

		Select * from tbl_StudentDetails where
			Student_Name = 
				(Select Student_Name from tbl_StudentsMaster where Student_Name = 'Umesh')

		-- Simplify Subquery
			Select * from tbl_StudentDetails where
				Student_Name = 'Umesh'
		--------------------------------------------------------------------------
			Select * from tbl_StudentsMaster where
			Student_Name in 
				(Select Student_Name from tbl_StudentDetails where Student_Name = 'Umesh')

			Select * from tbl_StudentsMaster where
			Student_Name in 
				(Select Student_Name from tbl_StudentDetails 
					where Student_Name in ('Umesh','Priyank'))


			Select sm.Student_Id,sm.Student_Address,sm.Student_Age,sm.Student_Name from tbl_StudentsMaster sm
			left join tbl_StudentDetails sd on
				sd.Student_Name = sm.Student_Name 
			where sm.Student_Name in ('Umesh','Priyank')		
			group by sm.Student_Id,sm.Student_Address,sm.Student_Age,sm.Student_Name

			Select s1.Student_Name,s1.Student_Address,s1.StudentDetail_Maths from (
				Select sm.Student_Id,sm.Student_Address,sm.Student_Age,sm.Student_Name,
				sd.StudentDetail_Id,sd.StudentDetail_Maths
				from tbl_StudentsMaster sm
				left join tbl_StudentDetails sd on
					sd.Student_Name = sm.Student_Name 
				where sm.Student_Name in ('Umesh','Priyank')		
				--group by sm.Student_Id,sm.Student_Address,sm.Student_Age,sm.Student_Name,
				--sd.StudentDetail_Id
			) s1