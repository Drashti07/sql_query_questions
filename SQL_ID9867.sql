/*
Three Lowest Distinct Salaries


Last Updated: August 2025

Easy
ID 9867
SQL_ID9867

You have been asked to find the three lowest distinct salaries. For example, if two people earn the same amount of money, they are counted as one.

Table
worker

*/

SELECT DISTINCT salary
from (
    select salary  , DENSE_RANK() OVER(ORDER BY salary ) as dnsrnk
    from worker
) A 
WHERE dnsrnk<=3