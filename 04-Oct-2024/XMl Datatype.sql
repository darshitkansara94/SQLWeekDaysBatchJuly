--XML DataType:

---- Sample XML
--<Employees>
--	<Employee>
--		<id>1</id>
--		<FirstName>Darshit</Name>
--		<LastName>Kansara</LastName>
--	</Employee>
--	<Employee>
--		<id>2</id>
--		<FirstName>Mithl</Name>
--		<LastName>Kansara</LastName>
--	</Employee>
--</Employees>


Declare @xmlData XML = '
	<Employees>
		<Employee>
			<Id>1</Id>
			<FirstName>Darshit</FirstName>
			<LastName>Kansara</LastName>
		</Employee>
		<Employee>
			<Id>2</Id>
			<FirstName>Mithl</FirstName>
			<LastName>Kansara</LastName>
		</Employee>
	</Employees>'

-- CUrsor with XML data type
Declare @Id int
Declare @FirstName nvarchar(100)
Declare @LastName nvarchar(100)

Declare employee_cursor cursor
	for 
		Select 
			Employee.value('(Id)[1]', 'int') as id,
			Employee.value('(FirstName)[1]', 'nvarchar(100)') as FirstName,
			Employee.value('(LastName)[1]', 'nvarchar(100)') as LastName
		from @xmlData.nodes('/Employees/Employee') as Employee(Employee);
	Open employee_cursor
		fetch next from employee_cursor into @Id,@FirstName,@LastName

		while @@FETCH_STATUS = 0
		Begin
			print(concat_ws(' ',@Id,@FirstName,@LastName))

			fetch next from employee_cursor into @Id,@FirstName,@LastName
		End
	Close employee_cursor

Deallocate employee_cursor

