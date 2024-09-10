Alter function fn_StudentData
(
	@Student_Id int
)
Returns Table
As
	return (Select Student_Id,Student_Name,Student_Age,Student_Address,Student_Marks,
	case
	when Student_Marks = 50 then 'Grade A'
when Student_Marks >= 25 then 'Grade B'
When Student_Marks >= 20 then 'Grade C'
	Else 'Fail'
	End As Result
		
	from tbl_Student where Student_Id  = @Student_Id)