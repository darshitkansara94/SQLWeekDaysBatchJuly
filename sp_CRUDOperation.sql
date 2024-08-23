ALter procedure sp_CRUDOperation
(
	@OperationType as nvarchar(20), -- To identify the operation perform by user
	@Student_Id as int = null,
	@Student_Name as nvarchar(100) = null,
	@Student_Address as nvarchar(max) = null,
	@Student_MobileNo as varchar(13) = null,
	@Student_Age as int = null,
	@Student_Gender as varchar(7) = null,
	@Student_DOB as date = null,
	@Student_Marks as decimal(18,2) = null
)
As
Begin
	If(@OperationType = 'Insert')
	Begin
		Insert into tbl_Student([Student_Name],[Student_Address],[Student_MobileNo],[Student_Age],[Student_Gender],[Student_DOB],[Student_Marks])
		values(@Student_Name,@Student_Address,@Student_MobileNo,@Student_Age,@Student_Gender,@Student_DOB,@Student_Marks)
	End
	else if(@OperationType = 'Update')
	Begin
		Update tbl_Student set
			[Student_Name] = @Student_Name,
			[Student_Address] = @Student_Address,
			[Student_MobileNo] = @Student_MobileNo,
			[Student_Age] = @Student_Age,
			[Student_Gender] = @Student_Gender,
			[Student_DOB] = @Student_DOB,
			[Student_Marks] = @Student_Marks
		where
			Student_Id = @Student_Id
	End
	Else if(@OperationType = 'Delete')
	Begin
		Delete from tbl_Student where Student_Id = @Student_Id
	End
	Else if(@OperationType = 'Select')
	Begin
		Select [Student_Id],[Student_Name],[Student_Address],[Student_MobileNo],[Student_Age],[Student_Gender],[Student_DOB],[Student_Marks]
		from tbl_Student
	End
End