Create trigger tr_CategoryMasterLog
on tbl_CategoryMaster
Instead of Insert
as
Begin
	Insert into tbl_CategoryMasterLog(Category_Name)
	values('Instead of trigger')
End