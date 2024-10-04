Alter trigger tr_CategoryMasterLog
on tbl_CategoryMasterLog
After Insert
As
Begin
	Declare @Category_Status nvarchar(100)

	Select @Category_Status = Category_Status from inserted

	If(@Category_Status = 'Approved')
	Begin
		Insert into tbl_categoryMaster(Category_Name,Company_Id,Created_Date,User_Id,IsActive)
		select Category_Name,Company_Id,GETDATE(),User_Id,1 from inserted
	End
End