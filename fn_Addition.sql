Alter function fn_Addition
(
	@Param1 int, -- 10
	@Param2 int -- 20
)
returns decimal(18,2) -- Return data type
As
Begin
	return @Param1 + @Param2 -- 10 + 20 = 30
End