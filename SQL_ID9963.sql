/*

Top 10 QBs


Last Updated: October 2025

Easy
ID 9963


Find the top quarterbacks with the most points in a single game in 2016. Rank them in such a way where ties in game points are assigned the same rank.
Ensure the output includes all quarterbacks ranked in the top 10, even if ties result in more than 10 records. Display the quarterback and their game points, ordered by rank.

Table
qbstats_2015_2016

*/

SELECT qb, game_points
from 
(
    select * , RANK() OVER(order by game_points desc) as rnk
    from qbstats_2015_2016
    where year = 2016
) a 
where rnk <= 10