SELECT Product , month , Sales
from 
(
select MONTH, [Apple],[Banana],[Orange]
from [dbo].[SalesData]
PIVOT( sum(Sales) for Product in ([Apple],[Banana],[Orange])) As P
) as SUB
UNPIVOT(Sales for Product in ([Apple],[Banana],[Orange]) ) AS U
