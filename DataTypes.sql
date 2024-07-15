DataTypes :
	We are allow user to enter data in specific format.

String :
	Combination of numeric value, Alphabet value, Special char.
	String always decorate with : "" / ''.

	Example :
		string abc = 'WelTech@123' // Combination
		string efg = 'WelTec';
		string ghi = '123';
		string fgh = '@'

	Types of string datatype in SQL :
		1. varchar
			Allow string value.
			It is single-code.
				Allow only single language / script.

			Syntax :
				varchar(length)
		2. nvarchar :
			Allow string value.
			It is unicode type.
				Allow multiple language / script.

			Syntax :
				nvarchar(length)

number :
	Allow only numeric value.

	int :
		Length is predefine.
		Limited no of char allowed.

		Synatx :
			int
	bigint :
		Length is double than int.

		Syntax :
			bigint

char :
	Single aplhabet is consider as char.
	string = 'WelTec Institute'.
	In the above example space is also consider as char.

decimal :
	Value has a '.' in between number is consider as decimal.

	Example : 23.58
	
	Syntax :
		decimal(18,2)

		Here, 18 is char before '.' in decimal. 
		And  2 is char after '.' in decimal.
float :
	It can be anything positive / negative and with decimal value.

	Syntax :
		float
boolean :
	boolean value always accept true / false.

	Syntax :
		bool

bit :
	It only support 0 and 1.
	it is always return as true / false but in the form of 0 and 1.

	Syntax :
		bit


uniqueidentifier :
	Is always save unique data.
	Mostly it is used with GUID.

	GUID Example : '630C0DA3-7191-4213-8CC6-725EB068EEEA'
	
	Syntax :
		uniqueidentifier