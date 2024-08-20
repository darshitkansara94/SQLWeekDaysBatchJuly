--Conditions :
--	Execute block of code based on condition / expression.
--	Conditions always return either true / false.

	If..Else
		-- Syntax 
			--If (expression)
			--Begin
			--	Positive code
			--End
			--Else
			--Begin
			--	Negative code
			--End

		-- Example 
			Declare @value1 int = 10;
			Declare @value2 int;			

			if(@value1 != '' AND @value2 != '')
				Begin
					if(@value1 = @value2)
						Begin
							print('Value1 and value2 is equal')
						End
					Else
						Begin
							print('Value1 and Value2 is not equal')
						End
				End
			Else
				Begin
					if(@value1 = null)
						Begin
							print('Value1 is null')
						End
					Else
						Begin
							print('Value2 is null')
						End
				End