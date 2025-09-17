/*
Hour Of Highest Gas Expense

Easy
ID 10005

Find the hour with the highest gasoline cost. Assume there's only 1 hour with the highest gas cost.

Table
lyft_rides
*/

select TOP 1 hour 
from lyft_rides
ORDER BY gasoline_cost DESC;