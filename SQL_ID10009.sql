/*
Find the total costs and total customers acquired in each year


Easy
ID 10009

Find the total costs and total customers acquired in each year.
Output the year along with corresponding total money spent and total acquired customers.

Table
uber_advertising
*/

select year ,
        SUM(money_spent) AS total_money_spent ,
        SUM(customers_acquired) AS total_customers_acquired
from uber_advertising
GROUP BY year;