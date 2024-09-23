Trigger :
	It is a special type of store procedure which is execute based on some action like 
		Insert/ update/ delete.
	It will automatically execute when event fired on triggerred table.

	-- Syntax 
		-- For Trigger
			Create trigger trigger_name
			on table_name
			For {insert/Update/Delete}
			As
			Begin
				Statement
			End
		-- After Trigger
			Create trigger trigger_name
			on table_name
			After {Insert/Update/Delete}
			As
				Begin
					Statement
				End