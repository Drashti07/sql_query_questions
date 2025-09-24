/*
Most Lucrative Products


Last Updated: September 2025

Medium
ID 2119

176

You have been asked to find the 5 most lucrative products (including ties) in terms of total revenue for the first half of 2022 (from January to June inclusive).


Output their IDs and the total revenue. There may be more than 5 rows in the output since you are including ties.

Table
online_orders

*/

WITh most_sold as 
(
    select product_id ,  SUM(cost_in_dollars * units_sold) as revenue,
            DENSE_RANK() OVER(ORDER BY SUM(cost_in_dollars * units_sold) DESC)  as total_sold
    from online_orders
    GROUP BY product_id
) 
SELECT product_id , revenue
FROM most_sold
WHERE total_sold <=5

ORDER BY total_sold desc;