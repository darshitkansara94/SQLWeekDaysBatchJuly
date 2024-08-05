Table Structure
	1. Category Master
		Category Id primary key identity key
		Category name

	2. Sub category Master
		Subcategory Id primary key identity key
		Category Id Foreign key (Category Master)
		SubCategroy Name

	3. Employee Master
		Employee Id primary key identity key
		Employee Name
		Employee Age
		Employee Mobile no
		Employee Address

	4. Student Master
		Student Id primary key identity key
		Student Name
		Student Age
		Student Mobile No
		Student Address

	5. Student Detail
		Student detail Id primary key identity key
		Student Id foreign key (Student Master)
		Student Marks
		Student Subject
		Student Class