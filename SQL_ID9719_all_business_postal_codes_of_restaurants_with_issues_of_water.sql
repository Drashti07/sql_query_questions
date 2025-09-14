SELECT custid, orderid,
val,
SUM(val) OVER(PARTITION BY custid) AS custtotal,
SUM(val) OVER() AS grandtotal
FROM Sales.OrderValues;