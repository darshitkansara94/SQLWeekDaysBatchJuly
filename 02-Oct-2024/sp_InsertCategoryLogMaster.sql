-- For Approve/ Reject status
Create Procedure sp_InsertCategoryLogMaster
(
	@Category_Id int,
	@Category_Status nvarchar(50)
)
As
Begin
	Insert into tbl_CategoryMasterLog(Category_Name,Company_Id,User_Id,Description,Category_Status)
	Select Category_Name,Company_Id,User_Id,CONCAT_WS(' ',Category_Name,'is',@Category_Status),@Category_Status 
	from 
		tbl_CategoryMasterLog
	where 
		CategoryLog_Id = @Category_Id
End