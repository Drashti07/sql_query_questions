/*

Easy
ID 9666 : Find the industry which has the lowest average sales compared to all industries


Find the industry with lowest average sales. Output that industry.

Table
forbes_global_2010_2014

assets: float
company: varchar
continent: varchar
country: varchar
industry: varchar
marketvalue: float
profits: float
rank: bigint
sales: float
sector: varchar

*/

select industry
from 
(
    select Top 1 AVG(sales) as sales ,  industry
    from forbes_global_2010_2014
    group by industry
    order by sales
)a
    