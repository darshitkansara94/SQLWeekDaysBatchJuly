create table TableA
(
	TableA_ID int primary key identity(1,1),
	TableA_Name nvarchar(10),
	TableA_Age int
)

create table TableB
(
	TableB_Id int primary key identity(1,1),
	TableB_TableA_Id int,
	TableB_Name nvarchar(10)
)

Select * from TableA
select * from TableB

Insert into TableA(TableA_Name,TableA_Age)
values('Jay',27),('Ravi',21),('Pasha',25)

Insert into TableB(TableB_TableA_Id,TableB_Name)
values(2,'A'),(3,'B'),(2,'C'),(4,'D')

Select * from TableA
select * from TableB

Select a.TableA_Name,a.TableA_Age,
	b.TableB_TableA_Id,b.TableB_Name from TableA A
inner join TableB B on
	A.TableA_ID = B.TableB_TableA_Id

Select a.TableA_Name,a.TableA_Age,
	b.TableB_TableA_Id,b.TableB_Name from TableB B
inner join TableA A on
	B.TableB_TableA_Id = A.TableA_ID

---------------------- Left Join ------------------------------
-- Syntax :
	--Select column1,column2, column3 from TableA 
	--Left join TableB
	--	on TableA.TableA_ID = TableB.TableB_TableA_Id

	Select * from TableA
	select * from TableB	


	Select 
		a.TableA_ID,a.TableA_Name,a.TableA_Age,
		b.TableB_Id,b.TableB_TableA_Id,b.TableB_Name
	from TableA A left join TableB B
		on A.TableA_ID = B.TableB_TableA_Id

---------------------- Right Join ------------------------------

Select * from TableA
Select * from TableB

Select 
	a.TableA_ID,a.TableA_Name,a.TableA_Age,
		b.TableB_Id,b.TableB_TableA_Id,b.TableB_Name
from TableB B
	right join TableA A
		on A.TableA_ID = B.TableB_TableA_Id
	right join TableC C on
		A.TableA_Id = C.TableC_Id


