sum()
	select * from tbl_Student

	--Insert into tbl_Student(Student_Name, Student_Age,Student_Address,Student_Class,Student_Marks)
	--values('Ajit',22,'Baroda',5,25),
	--	('Ashu',23,'Baroda',5,15),
	--	('Priyank bhai',25,'Baroda',7,20),
	--	('Parth',20,'Baroda',4,50)

	Select SUM(Student_Marks) as Total_Marks, Student_Name, Student_Address from tbl_Student
	group by Student_Name, Student_Address


	Avg()

	select AVG(Student_Marks) as Avg_Marks, Student_Name from tbl_Student
	group by Student_Name
		

	--Insert into tbl_Student(Student_Name, Student_Age,Student_Address,Student_Class,Student_Marks)
	--values('Ashu',24,'Baroda',6,20)
		