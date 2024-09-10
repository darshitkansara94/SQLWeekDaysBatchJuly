alter procedure sp_GetStudentData
(
	@Student_Id int
)
As
Begin
	Select Student_Name,Student_Marks,Student_Address,Student_Age,Result from dbo.fn_StudentData(@Student_Id)
	order by Student_Name
End