create function fn_GenerateEmployeeId
(
	@Employee_NamePrefix nvarchar(10),
	@Employee_Number bigint,
	@Employee_Id int
)
returns nvarchar(100)
As
Begin
	return concat(@Employee_NamePrefix, @Employee_Number,'_', @Employee_Id) -- A123456_1
End