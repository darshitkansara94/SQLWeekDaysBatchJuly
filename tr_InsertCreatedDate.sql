Create trigger tr_InsertCreatedDate
on tbl_categoryMaster
For Insert
As
Begin
	Declare @Category_Id int
	Declare @Category_Name nvarchar(100)

	Select @Category_Id = Category_Id from inserted
	Select @Category_Name = Category_Name from inserted

	Update tbl_CategoryMaster
		set Created_Date = GETDATE()
	where Category_Id = @Category_Id

	Insert into tbl_categoryMasterLog(Log_Detail,Category_Id,Category_Name)
	values(concat_ws(' ','Category Master Data Inserted',getdate()),@Category_Id,
		CONCAT_WS(' ','Inserted category is',@Category_Name))
End