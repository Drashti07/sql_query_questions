/*
Top 3 US Sectors


Last Updated: July 2025

Medium
ID 9802


Find the top 3 sectors in the United States with the best average rank (lower numerical values indicate better rankings).
Output the sector name along with its average rank. Order the results by average rank in ascending order to ensure that the sectors with the best (lowest) ranks are selected.

Table
forbes_global_2010_2014

*/

With ranks as 
(
    select  sector ,RANK() OVER( order by AVG(CAST(rank AS float)) asc)  AS rnk , AVG(CAST(rank AS float)) as avg_rank
    from forbes_global_2010_2014
    WHERE country = 'United States'
    group by sector
) 
SELECT sector  , avg_rank
FROM ranks
where rnk<=3;