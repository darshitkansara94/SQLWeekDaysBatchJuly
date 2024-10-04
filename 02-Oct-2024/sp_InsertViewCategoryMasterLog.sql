-- Waiting for Approval
Create procedure sp_InsertViewCategoryMasterLog
(
	@Category_Name nvarchar(100),
	@Company_Id int,
	@User_Id int
)
As
Begin
	Insert into vw_CategoryLogTable(Category_Name,Company_Id,User_Id)
	values(@Category_Name,@Company_Id,@User_Id)
End