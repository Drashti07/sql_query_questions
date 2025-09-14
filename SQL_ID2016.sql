/*
Pizza Partners


Last Updated: August 2025

Medium
SQL_ID2016

43

Which partners have ‘pizza’ in their name and are located in Boston? And what is the average order amount? Output the partner name and the average order amount.

Tables
postmates_orders
postmates_markets
postmates_partners

*/


SELECT 
    p.name 
    ,AVG(o.amount) AS avg_order 
FROM postmates_orders AS o 
JOIN postmates_markets AS m
    ON o.city_id = m.id 
JOIN postmates_partners AS p
    ON o.seller_id = p.id 
WHERE 
    LOWER(p.name) LIKE '%pizza%'
    AND m.name = 'Boston'
GROUP BY p.name