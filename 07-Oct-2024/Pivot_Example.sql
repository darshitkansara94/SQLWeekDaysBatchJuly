Create table tbl_SalesInfo
(
	[Year] int,
	Region nvarchar(50),
	Sales int
)

Select * from tbl_SalesInfo

Insert into tbl_SalesInfo([Year],Region,Sales)
values(2010,'South',400),(2011,'North',200),(2012,'North',500),(2013,'South',400)

Select [Year],South,North from 
	(Select Region,[Year],Sales from tbl_SalesInfo) as table_salesInfo
Pivot
(sum(Sales) for region in(South,North)) as tbl2
Order by tbl2.Year

Select Region,[2010],[2011] from
	(Select Region,[YEAR],Sales from tbl_SalesInfo) as tbl1
Pivot
	(Sum(Sales) for [Year] in ([2010],[2011])) as tbl2
order by tbl2.Region