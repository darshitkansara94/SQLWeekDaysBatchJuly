Select * from tbl_CategoryMaster

select * from tbl_CategoryMasterLog

Insert into tbl_CategoryMaster(Category_Name)
values('From Instead of trigger')


Create view vw_CategoryLogTable As
	Select CategoryLog_Id,Category_Name,Company_Id,Created_Date,User_Id,Description,Category_Status 
	from tbl_CategoryMasterLog

select * from vw_CategoryLogTable



