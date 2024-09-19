Alter trigger tr_DeleteCategoryMaster
On tbl_CategoryMaster
For Delete
As
Begin
	Declare @Category_Id int
	Declare @Category_Name nvarchar(500)

	Select @Category_Id = Category_Id from deleted
	Select @Category_Name = Category_Name from deleted

	Insert into tbl_categoryMasterLog(Log_Detail,Category_Id,Category_Name)
	values(concat_ws(' ','Category Master Data Deleted',getdate()),@Category_Id,
		CONCAT_WS(' ','Deleted category is',@Category_Name))
End