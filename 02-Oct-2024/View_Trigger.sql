
Select * from tbl_CategoryMaster

select * from tbl_CategoryMasterLog

Insert into tbl_CategoryMaster(Category_Name)
values('From Instead of trigger')

Insert into tbl_CategoryMasterLog(Category_Name,Company_Id,User_Id,Description,Category_Status)
Select Category_Name,Company_Id,User_Id,'Speaker is Approved','Approved' from tbl_CategoryMasterLog
where CategoryLog_Id = 5


Create view vw_CategoryLogTable As
	Select CategoryLog_Id,Category_Name,Company_Id,Created_Date,User_Id,Description,Category_Status 
	from tbl_CategoryMasterLog

select * from vw_CategoryLogTable

Insert into vw_CategoryLogTable(Category_Name,Company_Id,User_Id)
values('Speaker',1,1)


create table tbl_CategoryMasterLog
(
	CategoryLog_Id int primary key identity(1,1),
	Category_Name nvarchar(100),
	Company_Id int,
	Created_Date datetime default getdate(),
	User_Id int,
	Description nvarchar(max),
	Category_Status nvarchar(200)
)

exec sp_InsertViewCategoryMasterLog 
	@Category_Name='IPhone',
	@Company_Id = 1,
	@User_Id = 1

exec sp_InsertCategoryLogMaster
	@Category_Id = 8,
	@Category_Status = 'Reject'
