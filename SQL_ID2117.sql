/*
Employee with Most Orders


Last Updated: August 2025

Medium
ID 2117

35

What is the last name of the employee or employees who are responsible for the most orders?

Tables
shopify_orders
shopify_employees

*/

With max_order as 
(
    select e.id , e.last_name, RANK() OVER(ORDER BY COUNT(order_id) DESC )  as rnk
    from shopify_orders o 
    JOIN shopify_employees e on o.resp_employee_id = e.id 
    group by e.id , last_name
)
SELECT last_name 
FROM max_order 
WHERE rnk =1