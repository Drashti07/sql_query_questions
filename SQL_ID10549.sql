/*
Top Customers With Dense Ranking

Easy
ID 10549


Rank the top five customers by total purchase value. If multiple customers have the same total purchase value, treat them as ties and include all tied customers in the result. Display each customer's ID, total purchase value, and rank.


Ensure that the ranking does not skip numbers due to ties (e.g., if two customers share rank 2, the next rank should be 3).

*/
select * 
FROM (
    select customer_id , total_purchase_value , DENSE_RANK() OVER(ORDER BY total_purchase_value DESC) AS rank_num
    from customer_purchase
    ) A 
WHERE rank_num <=5