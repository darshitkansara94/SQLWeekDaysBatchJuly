Create a SP
	Perform Insert, Update, Delete and Select

	Achive using If..else if..else

	select * from tbl_Student

	select GETDATE()

exec sp_CRUDOperation
	@OperationType = 'Insert',
	@Student_Name = 'Priyank',
	@Student_Address = 'Vdodara',
	@Student_MobileNo = '1234567890',
	@Student_Age = 25,
	@Student_Gender = 'Male',
	@Student_DOB = '2024-08-23',
	@Student_Marks = 56.34

exec sp_CRUDOperation
	@OperationType = 'Update',
	@Student_Id = 1,
	@Student_Name = 'Priyank',	
	@Student_MobileNo = '1234567890',
	@Student_Age = 25,
	@Student_Gender = 'Male',
	@Student_DOB = '2024-08-23',
	@Student_Marks = 56.34

exec sp_CRUDOperation
	@OperationType = 'Delete',
	@Student_Id = 1

exec sp_CRUDOperation
	@OperationType = 'Select'

exec sp_CRUDOperationWith_Exists
	@OperationType = 'Upsert',
	@Student_Id = 3,
	@Student_Name = 'Ajay',
	@Student_Address = 'Vadodara',
	@Student_MobileNo = '234567891',
	@Student_Age = 26,
	@Student_Gender = 'Male',
	@Student_DOB = '2024-08-22',
	@Student_Marks = 78.00

	
