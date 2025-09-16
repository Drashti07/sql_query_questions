
/*
GROUP BY CITY
FILTER August 2021 AND no discount was applied
SUM(rides)


City with Most Customers


Medium
ID 2079


For each city, find the number of rides in August 2021 that were paid without using a promotional code (i.e., where no discount was applied). Output the city or cities where this number was the highest.

Tables
lyft_orders
lyft_payments

*/
with ride as 
(
    SELECT lo.CITY , count(*) as total_Ride
    FROM lyft_orders lo 
    JOIN lyft_payments lp 
        ON lo.order_id = lp.order_id
    where lp.promo_code = 'FALSE' AND (MONTH(order_date ) = 8 AND YEAR(order_date) = 2021)
    group by lo.CITY
)
select CITY 
from ride 
where total_Ride = (SELECT MAX(total_Ride) from ride );
 
