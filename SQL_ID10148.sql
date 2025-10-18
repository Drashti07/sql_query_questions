/*
TOP 5 

ID 10148

*/
WITH result as 
(
    select city , COUNT(stars)  AS TOTALSTRAT ,RANK() OVER(ORDER BY COUNT(stars) DESC) AS RNK 
    from yelp_business
    WHERE stars = 5
    GROUP BY city
) 
SELECT city , TOTALSTRAT
from result
where rnk <=5