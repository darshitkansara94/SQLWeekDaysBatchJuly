Create trigger tr_vw_CategoryMasterLog
on vw_CategoryLogTable
Instead of Insert
As
Begin
	Insert into tbl_CategoryMasterLog
		(Category_Name,Company_Id,Created_Date,User_Id,Description,Category_Status)
	Select Category_Name,Company_Id,Created_Date,User_Id,'Waiting for Approval Status',
		'Waiting for approval'
		from inserted

End

select * from tbl_CategoryMasterLog