exec sp_InsertCategory 'Desktop'

select * from tbl_StudentData

select * from tbl_Categorymaster

exec sp_InsertStudentData 'ABC',25,254254522,4

exec sp_InsertStudentData null,25,null,4

exec sp_InsertStudentData 'Tanay'

exec sp_InsertStudentData '',26,5485485,NULL

exec sp_UpdateCategory 8,'AC'

exec sp_DeleteCategory 12

-- Assignment :
	-- Create store procedure with multiple parameters for update and delete