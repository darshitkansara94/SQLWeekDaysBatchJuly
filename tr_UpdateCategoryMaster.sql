Create trigger tr_UpdateCategoryMaster
on tbl_CategoryMaster
For Update
As
Begin
	Declare @Category_Id int
	Declare @Category_Name nvarchar(100)

	select @Category_Id = Category_Id from inserted
	Select @Category_Name = Category_Name from inserted

	Update tbl_CategoryMaster set
		Modified_Date = GETDATE()
	where Category_Id = @Category_Id

	Insert into tbl_categoryMasterLog(Log_Detail,Category_Id,Category_Name)
	values(concat_ws(' ','Category Master Data Updated',getdate()),@Category_Id,
		CONCAT_WS(' ','Updated category is',@Category_Name))
End