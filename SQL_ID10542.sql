/*
Total number pf ineraction ans total content creator 
group by customer

Interaction Summary


Last Updated: September 2025

Medium
ID 10542

36

Calculate the total number of interactions and the total number of contents created for each customer. Include all interaction types and content types in your calculations.


Your output should include the customer's ID, the total number of interactions, and the total number of content items.

Tables
customer_interactions
user_content

*/
With interaction_count as 
(
    SELECT customer_id , COUNT(interaction_type) as total_interactions
    FROM  customer_interactions 
    GROUP BY customer_id
) ,
content_count as 
(
    SELECT customer_id , COUNT(content_type) as total_content_items
    FROM  user_content 
    GROUP BY customer_id
)
SELECT coalesce(IC.customer_id , CC.customer_id) AS customer_id , coalesce(IC.total_interactions , 0) AS total_interactions , coalesce(CC.total_content_items ,0) AS total_content_items
FROM interaction_count ic 
FULL outer JOIN content_count cc 
    ON IC.customer_id = CC.customer_id 
order by 1