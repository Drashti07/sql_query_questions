/*
Find the total number of interactions on days 0 and 2

Easy
ID 9788

Find the total number of interactions on days 0 and 2.
Output the result alongside the day.

Table
facebook_user_interactions
*/
select COUNT(*) AS n_interactions, day
from facebook_user_interactions
WHERE DAY IN (0,2)
GROUP BY DAY;