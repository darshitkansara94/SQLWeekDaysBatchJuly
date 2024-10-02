Instead of Trigger :
	Instead of trigger skip the main event and execute the event written inside trigger.
	Also work with the views.

	-- Syntax :
		Create trigger tr_Name
		on Tbl_Name / vw_name
		Instead of Insert / Update / Delete
		As
		Begin
			SQL Statement
		End

