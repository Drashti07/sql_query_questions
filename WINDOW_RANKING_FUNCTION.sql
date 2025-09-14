--SELECT * FROM dbo.RankingFunctions;

SELECT Name , marks , ROW_NUMBER() OVER(PARTITION BY Name ORDER BY marks DESC) as rnum,
RANK() OVER(PARTITION BY Name ORDER BY marks DESC ) as rank ,
DENSE_RANK() OVER(PARTITION BY Name ORDER BY marks DESC  ) as densrank,
NTILE(2) OVER(ORDER BY marks) as numofgroup ,
CUME_DIST() OVER(PARTITION BY Name ORDER BY marks) as cumper,
PERCENT_RANK() OVER(PARTITION BY Name ORDER BY marks) as prcnt
FROM dbo.RankingFunctions;


select * , LEAD(marks ,1, 900 ) OVER(Order by marks) as leadfun,LAG(marks) OVER(Order by marks) as legfun
, FIRST_VALUE(marks) OVER( ORDER BY marks desc ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as firstval
, LAST_VALUE(marks) OVER( ORDER BY marks desc ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOllowing) as firstval

From dbo.RankingFunctions;